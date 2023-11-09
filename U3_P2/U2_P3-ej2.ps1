#Fecha de hace una semana
$semana = (Get-Date).AddDays(-7)

#Mostrar todos los usuarios
$usuarios = Get-ADUser -Filter * -Properties LastLogonDate

#Deshabilitar usuarios
foreach ($usr in $usuarios) {
    if ($usr.LastLogonDate -lt $semana -and $usr.Enabled) {
        Disable-ADAccount -Identity $usr
        Write-Host "El usuario $($usr.SamAccountName) ha sido deshabilitado."
    }
}
