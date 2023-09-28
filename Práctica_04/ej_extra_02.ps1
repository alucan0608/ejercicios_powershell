[int]$alture = Read-Host "Escribe un número"

for ($fila=0; $fila -lt $alture; $fila++) {
    for ($col=0; $col -lt $fila; $col++) {
        Write-Host -NoNewline "-" 
    }
    Write-Host "*"
}