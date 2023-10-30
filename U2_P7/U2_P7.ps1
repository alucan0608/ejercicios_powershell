$empleados = Import-Csv C:\Users\Administrador\Desktop\empleados.csv -delimiter ";"

foreach ($emp in $empleados) {

    if ($emp.departamento -eq "PERSONAL") {

        Set-ADUser -Identity "$($emp.nombre).$($emp.apellido)" -ProfilePath "\\empresa-DC1\Empresa_users$\$($emp.nombre).$($emp.apellido)"

    }
}