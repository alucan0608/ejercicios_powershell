[double]$renta = Read-Host "Escribe tu renta anual"

if ($renta -lt 10000) {
    $pagar= $renta /5
    Write-Host "Tienes que pagar $pagar"
} elseif ($renta -ge 10000 -and $renta -lt 20000){
    $pagar = $renta /15
    Write-Host "Tienes que pagar $pagar"
} elseif ($renta -ge 20000 -and $renta -lt 35000){
    $pagar = $renta /20
    Write-Host "Tienes que pagar $pagar"
} elseif ($renta -ge 35000 -and $renta -lt 60000){
    $pagar = $renta /30
    Write-Host "Tienes que pagar $pagar"
} elseif ($renta -gt 60000){
    $pagar = $renta /45
    Write-Host "Tienes que pagar $pagar"
}