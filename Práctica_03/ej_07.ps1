[string]$passwd = "contraseña"

[string]$introducido = Read-Host "Escribe la contraseña"

if ($passwd -ieq $introducido) {
    Write-Host "La contraseña introducida es correcta"
} else {
    Write-Host "La contraseña es incorrecta"
}