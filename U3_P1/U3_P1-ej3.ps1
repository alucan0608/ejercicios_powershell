$usuario = Read-Host "Escribe un usuario para borrar todos sus procesos"

$proceso = Get-Process -IncludeUserName | where UserName -eq $usuario

foreach ($proc in $proceso) {

    Stop-Process -Id $proc.Id

}