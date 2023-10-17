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