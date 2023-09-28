[int]$alture = Read-Host "Escribe un número"

for ($i=1; $i -le $alture; $i++) {
    for($j = $i; $j -ge 1; $j--) {
        Write-Host -NoNewline "$j"
    }
    Write-Host ""
}