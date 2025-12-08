function Start-ProgressBar { # Define una función llamada Start-ProgressBar
    [CmdletBinding()] # # Hace que la función se comporte como un cmdlet estándar de PowerShell que habilita características avanzadas(como validación, manejo de parámetros, etc).
    param ( # Inicia el bloque donde se declaran los parámetros o entradas que la función aceptará a continuacion en la siguiente linea.
        [Parameter(Mandatory = $true)] # Define una caracteristica para el siguiente parámetro y es obligatorio para ejecutar la función.
        $Title, # Define el parámetro llamado "Title" que almacenará el texto que aparecerá como título de la barra de progreso.
        
        [Parameter(Mandatory = $true)] # Define una caracteristica para el siguiente parámetro y es obligatorio para ejecutar la función.
        [int]$Timer # Define el parámetro llamado "Timer" el cual dice que solo puede ser un número entero [int] que representa el tiempo total del proceso en segundos.
    ) # Cierra la declaración del bloque de los parámetros que pusimos para la función.
    
    for ($i = 1; $i -le $Timer; $i++) { #Inicia un bucle For que se repetirá contando desde 1 hasta llegar al valor del parámetro Timer.
        Start-Sleep -Seconds 1 # Este comando de PowerShell pausa la ejecución del script por 1 segundo en cada repetición del bucle.
        $percentComplete = ($i / $Timer) * 100 # Calcula el porcentaje de completado dividiendo el conteo actual ($i) entre el total ($Timer) y multiplicando por 100.
        Write-Progress -Activity $Title -Status "$i seconds elapsed" -PercentComplete $percentComplete # Muestra la barra de progreso en la consola usando el título, un mensaje de estado, y el porcentaje calculado.
    } # Cierra el bloque de código del bucle For.
} # Cierra la definición completa de la función Start-ProgressBar.
# Call the function # Comentario para indicar que la siguiente línea ejecuta la función que acabamos de definir.
Start-ProgressBar -Title "Test timeout" -Timer 5 # Ejecuta la función y pone título "Test timeout" y estableciendo el tiempo total en 30 segundos.