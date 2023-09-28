$menu = Read-Host "`n a) Crear una carpeta `n b) Crear un fichero nuevo `n c) Cambiar el nombre de un fichero o carpeta `n d) Borrar un archivo o carpeta `n e) Verificar si existe un fichero o carpeta `n f) Mostrar el contenido de un directorio `n g) Mostrar la fecha y hora actuales `n x) Salir"


switch ($menu) {
    a {
        $path = Read-Host "Escribe la ruta donde quieras crear la carpeta"
        $nombre = Read-Host "Escribe el nombre de la carpeta"
        New-Item $path\$nombre -ItemType Directory
        Write-Host "Carpeta creada correctamente"
    }
    b {
        $path = Read-Host "Escribe la ruta donde quieras crear el fichero"
        $nombre = Read-Host "Escribe el nombre del fichero"
        New-Item $path\$nombre -ItemType File
        Write-Host "Fichero creado correctamente"
    }
    c {
        $path = Read-Host "Ecribe la ruta completa del fichero o carpeta"
        $nombre = Read-Host "Escribe como quieres que se llame el fichero o carpeta"
        Rename-Item $path -NewName $nombre
        Write-Host "Carpeta o fichero renombrado correctamente"
    }
}