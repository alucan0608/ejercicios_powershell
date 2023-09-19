[double]$num1 = Read-Host "Dime un número"
[double]$num2 = Read-Host "Dime otro número"

$operacion = Read-Host " 1. Suma `n 2. Resta `n 3. Multiplicar `n 4.Dividir `n Elige una operación"

switch ($operacion){
    1 {
        $res = $num1 + $num2
    }
    2 {
        $res = $num1 - $num2
    }
    3 {
        $res = $num1 * $num2
    }
    4 {
        $res = $num1 / $num2
    }
    default {
        Write-Host "Valor invalido"
    }
}

Write-Host "El resultado es $res"