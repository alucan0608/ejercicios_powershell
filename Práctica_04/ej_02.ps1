[int]$edad = Read-Host "Dime tu edad"
[int]$num = 1

while ($num -le $edad) {
    Write-Host "$num"
    $num ++
    }