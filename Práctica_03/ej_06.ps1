[string]$path = Read-Host "Escribe la ruta de de un archivo o carpeta"

if (Test-Path $path -PathType Container) {
    Write-Host "El directorio introducido existe"
    Get-ChildItem -Path $path -Recurse
} else {
    Write-Host "El directorio introducido no existe"
}