[int]$edad = Read-Host "Escribe tu edad"

if ($edad -lt 4) {
    Write-Host "Puedes entrar gratis"
} elseif ($edad -le 18 -and $edad -ge 4) {
    Write-Host "Debes pagar 5€"
} else {
    Write-Host "Debes pagar 10€"
}