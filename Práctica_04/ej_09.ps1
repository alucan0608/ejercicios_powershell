[string]$contraseña = Read-Host "Escribe una contraseña"

while ($contraseña -ne $introduce) {
    [string]$introduce = Read-Host "Introduce la contraseña correcta"
}

Write-Host "Contraseña correcta"