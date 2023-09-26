[int]$num1 = 1
[string]$nom = Read-host "Escribe tu nombre de ususario"
[int]$num2 = Read-Host "Dime un número"

while ($num1 -le $num2) {
    Write-Host "$num1. $nom"
    $num1 ++
}