$altura = Read-Host "Escribe un número"

for ($i=1; $i -le $altura; $i++) {
    Write-Host ("-" *($i-1)) -NoNewline
    Write-Host ("*")
}