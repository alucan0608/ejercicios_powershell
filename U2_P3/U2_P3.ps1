#

New-ADOrganizationalUnit -Name "Empresa" -Path "DC=EMPRESA,DC=LOCAL"

$departamento = Import-Csv -Path C:\Users\Administrador\Desktop\departamentos.csv -Delimiter ';'
$empleados = Import-Csv -Path C:\Users\Administrador\Desktop\empleados.csv -Delimiter ';'

foreach ($dep in $departamento) {
    $uo = $dep.departamento
    $desc = $dep.descripcion

    New-ADOrganizationalUnit -Name $uo -Description $desc -Path "OU=Empresa,DC=EMPRESA,DC=LOCAL"
    New-ADGroup -Name $uo -GroupCategory Security -GroupScope Global -Path "OU=$uo,OU=Empresa,DC=EMPRESA,DC=LOCAL"
}

foreach ($em in $empleados) {
    $dep = $em.departamento
    $nombre = $em.nombre
    $apellido = $em.apellido

    New-ADUser -Name "$nombre $apellido" -Path "OU=$dep,OU=Empresa,DC=EMPRESA,DC=LOCAL" -SamAccountName "$nombre.$apellido" -UserPrincipalName "$nombre.$apellido@empresa.local" -AccountPassword (ConvertTo-SecureString "aso2021." -AsPlainText -Force) -GivenName "$nombre" -Surname "$apellido" -ChangePasswordAtLogon $true -Enabled $true
    Add-ADGroupMember -Identity $dep -Members "$nombre.$apellido"
}
