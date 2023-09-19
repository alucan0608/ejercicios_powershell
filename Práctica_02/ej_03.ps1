[double]$horas = Read-Host "Horas trabajadas"
[double]$coste = Read-Host "Coste/Hora"

$salario = $horas * $coste

Write-Host "Salario" $salario