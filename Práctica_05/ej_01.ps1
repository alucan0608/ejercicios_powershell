function sumar {
    param (
        [int]$x,
        [int]$y
    )
    $sumar = $x + $y
    Write-Host "La respuesta es $sumar"
}

function restar {
    param (
        [int]$x,
        [int]$y
    )
    $restar = $x - $y
    Write-Host "La respuesta es $restar"
}

function multiplicar {
    param (
        [int]$x,
        [int]$y
    )
    $multiplicar = $x * $y
    Write-Host "La respuesta es $multiplicar"
}

function dividir {
    param (
        [int]$x,
        [int]$y
    )
    $dividir = $x / $y
    Write-Host "La respuesta es $dividir"
}

do {
    [int]$calc = Read-Host " 1. Sumar `n 2. Restar `n 3. Multiplicar `n 4. Dividir `n 5. Salir `n Elige una opción"
    [int]$x = Read-Host "Escribe un número"
    [int]$y = Read-Host "Escrbie otro número"

    switch ($calc) {
        1 {
            sumar $x $y
        }
        2 {
            restar $x $y
        }
        3 {
            multiplicar $x $y
        }
        4 {
            dividir $x $y
        }
    }
} while ($calc -ne 5)