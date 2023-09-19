[string]$path = Read-Host "Escribe la ruta de de un archivo o carpeta"

if (Test-Path $path) {
    Write-Host "El fichero o carpeta introducido existe"
} else {
    Write-Host "El fichero o carpeta introducido no existe"
}