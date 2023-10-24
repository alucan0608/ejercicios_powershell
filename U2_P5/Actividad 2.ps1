New-Item -Path C:\Empresa -ItemType Directory

$departamento = Import-Csv -Path C:\Users\Administrador\Desktop\departamentos.csv -Delimiter ";"

foreach ($dep in $departamento) {
    $nomdep = $dep.departamento

    New-Item -Path C:\Empresa\$nomdep -ItemType Directory
}


foreach ($dep in $departamento) {
    $nomdep = $dep.departamento

    New-SmbShare -Path C:\Empresa\$nomdep -Name $nomdep -ChangeAccess $nomdep -FullAccess "Administradores" -ReadAccess "Usuarios del dominio"
}


#Permisos NTFS
foreach ($dep in $departamento) {
    $acl = Get-Acl -Path C:\Empresa\$($dep.departamento)

    $acl.SetAccessRuleProtection($true, $false)

    $permiso = 'Administradores','FullControl','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso
    $acl.SetAccessRule($ace)

    $permiso = "$($dep.departamento)",'Modify','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso
    $acl.SetAccessRule($ace)

    $permiso = 'Usuarios del dominio','Read','ContainerInherit,ObjectInherit','None','Allow'
    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso
    $acl.SetAccessRule($ace)
    $acl | Set-Acl -Path C:\Empresa\$($dep.departamento)
    $acl.Access | Format-Table
}
