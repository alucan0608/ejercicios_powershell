[int]$alture = Read-Host "Escribe un número"

for ($i=1; $i -le $alture; $i++) {
    for($j = ($i*2)-1; $j -ge 1; $j=$j-2) {
        Write-Host -NoNewline "$j"
    }
    Write-Host ""
}