[int]$tipo = Read-Host "Que tipo de pizza quieres `n 1. Vegetariana `n 2. No vegetariana `n Tipo de pizza"

switch ($tipo) {
    1 {[int]$ingredientes = Read-Host "Elige los ingredientes `n 1. Pimiento `n 2. Tofu `n Ingrediente elegido "
        switch ($ingredientes) {
            1 {Write-Host "Tipo de pizza: Vegetariana `n Ingredientes: Primiento, mozzarella y tomate"}
            2 {Write-Host "Tipo de pizza: Vegetariana `n Ingredientes: Tofu, mozzarella y tomate"}
        }}
    2 {[int]$ingredientes = Read-Host "Elige los ingredientes `n 1. Peperoni `n 2. Jamón `n 3. Salmón `n Ingrediente elegido "
        switch ($ingredientes) {
            1 {Write-Host "Tipo de pizza: No vegetariana `n Ingredientes: Peperoni, mozzarella y tomate"}
            2 {Write-Host "Tipo de pizza: No vegetariana `n Ingredientes: Jamón, mozzarella y tomate"}
            3 {Write-Host "Tipo de pizza: No vegetariana `n Ingredientes: Salmón, mozzarella y tomate"}
        }
    }

}