#Crear UO EMPRESA

New-ADOrganizationalUnit -Name "Empresa" -Path "DC=EMPRESA,DC=LOCAL"


#Importar los datos de los archivos departamentos y empleados

$departamento = Import-Csv -Path C:\Users\Administrador\Desktop\departamentos.csv -Delimiter ';'
$empleados = Import-Csv -Path C:\Users\Administrador\Desktop\empleados.csv -Delimiter ';'


#Por cada departamento se se creará una unidad organizativa con su respectivo grupo

foreach ($dep in $departamento) {
    $uo = $dep.departamento
    $desc = $dep.descripcion

    New-ADOrganizationalUnit -Name $uo -Description $desc -Path "OU=Empresa,DC=EMPRESA,DC=LOCAL"
    New-ADGroup -Name $uo -GroupCategory Security -GroupScope Global -Path "OU=$uo,OU=Empresa,DC=EMPRESA,DC=LOCAL"
}


#Por cada empleado de la tabla se creará un usuario con toda su información

foreach ($em in $empleados) {

#Se alojarán en variables el departamento, nombre y apellidos de cada empleado
    $dep = $em.departamento
    $nombre = $em.nombre
    $apellido = $em.apellido

    New-ADUser -Name "$nombre $apellido" -Path "OU=$dep,OU=Empresa,DC=EMPRESA,DC=LOCAL" -SamAccountName "$nombre.$apellido" -UserPrincipalName "$nombre.$apellido@empresa.local" -AccountPassword (ConvertTo-SecureString "aso2021." -AsPlainText -Force) -GivenName "$nombre" -Surname "$apellido" -ChangePasswordAtLogon $true -Enabled $true

#Se añade cada usuario a su grupo
    Add-ADGroupMember -Identity $dep -Members "$nombre.$apellido"
}