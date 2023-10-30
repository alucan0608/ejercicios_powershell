New-Item -Path C:\Empresa_users -ItemType Directory

$empleados = Import-Csv -Path C:\Users\Administrador\Desktop\empleados.csv -Delimiter ";"

#Compartir la carpeta Empresa_users
New-SmbShare -Path C:\Empresa_users -Name Empresa_users$ -FullAccess "Administradores" -ChangeAccess "Usuarios del dominio"

#Creación de carpetas para cada usuario
foreach ($emp in $empleados) {
    $nombreemp = $emp.nombre
    $apellidoemp = $emp.apellido

    New-Item -Path C:\Empresa_users\$nombreemp.$apellidoemp -ItemType Directory
}



foreach ($emp in $empleados) {
    $nombreemp = $emp.nombre
    $apellidoemp = $emp.apellido
    $departamento = $emp.departamento

    $acl = Get-Acl -Path C:\Empresa_users\$nombreemp.$apellidoemp
    $acl.SetAccessRuleProtection($true, $false)

    #ACL administradores
    $permisoAdmin = 'Administradores', 'FullControl', 'ContainerInherit,ObjectInherit', 'None', 'Allow'
    $aceAdmin = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoAdmin
    $acl.SetAccessRule($aceAdmin)

    #ACL usuarios
    $permisoUsuario = "$nombreemp.$apellidoemp", 'FullControl', 'ContainerInherit,ObjectInherit', 'None', 'Allow'
    $aceUsuario = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoUsuario
    $acl.SetAccessRule($aceUsuario)


    Set-Acl -Path C:\Empresa_users\"$nombreemp.$apellidoemp" -AclObject $acl

    Set-ADUser -Identity "$nombreemp.$apellidoemp" -ScriptPath "carpeta$($emp.departamento).bat" -HomeDrive "Z:" -HomeDirectory "\\EMPRESA-DC1\Empresa_users$\$nombreemp.$apellidoemp"
}
