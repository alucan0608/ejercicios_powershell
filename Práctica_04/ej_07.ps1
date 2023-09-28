[int]$alture = Read-Host "Escribe un número"

for ($fila=1; $fila -le $alture; $fila++) {
    for ($col=1; $col -le $fila; $col++) {
        Write-Host -NoNewline "*"
    }
    Write-Host ""
}