[string]$nombre = Read-Host "Escribe tu nombre"
[int]$genero = Read-Host " `n 1. Mujer `n 2. Hombre `n Cuál es tu género "

if ($nombre -lt "M*" -and $genero -eq 1){
    Write-Host "Perteneces al grupo A"
} elseif ($nombre -gt "N*" -and $genero -eq 2) {
    Write-Host "Perteneces al grupo A"
} else {
    Write-Host "Perteneces al grupo B"
}