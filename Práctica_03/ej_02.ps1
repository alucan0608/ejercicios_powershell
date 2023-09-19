[int]$edad = Read-Host "Escribe tu edad"

if ($edad -lt 18) {
    Write-Host "Eres menor de edad"
} Else {
    Write-Host "Eres mayor de edad"
}