$usuarios = Import-Csv Z:\Práctica_05\usuarios.csv -Delimiter ","

foreach ($us in $usuarios) {
    Write-Host "Usuario: $($us.nombre) $($us.apellidos) $($us.grupo)"
}