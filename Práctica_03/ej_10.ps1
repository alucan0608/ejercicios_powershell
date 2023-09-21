[double]$punt = Read-Host "Escribe tu puntuación"

if ($punt -eq 0.0) {
    $dinero = $punt * 2400
    Write-Host "Tu nivel de puntuación es Inaceptable, te corresponden $dinero €"
} elseif ($punt -eq 0.4) {
    $dinero = $punt * 2400
    Write-Host "Tu nivel de puntuación es Aceptable, te corresponden $dinero €"
} elseif ($punt -ge 0.6) {
    $dinero = $punt * 2400
    Write-Host "Tu nivel de puntuación es Meritorio, te corresponden $dinero €"
} else {
    Write-Host "Tu nivel de puntuación debe ser 0.0, 0.4 o estar por encima de 0.6"
}