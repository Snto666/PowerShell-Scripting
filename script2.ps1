Add-Type -AssemblyName System.Windows.Forms # Comando que carga la biblioteca de ensamblados .NET llamada 'System.Windows.Forms' en la sesión de PowerShell para poder usar elementos de interfaz gráfica (como formularios y botones).
Add-Type -AssemblyName System.Drawing # Comando que carga la biblioteca de ensamblados .NET llamada 'System.Drawing' en la sesión de PowerShell para poder usar elementos gráficos (como definir tamaños y posiciones).

# Create form # Comentario que indica que el siguiente bloque de código se encargará de crear y configurar la ventana principal.
$form = New-Object System.Windows.Forms.Form # Crea una nueva instancia del objeto Form (la ventana principal) y guarda su referencia en la variable $form.
$form.Text = "Input Form" # Asigna el texto "Input Form" al título de la ventana que se mostrará en la barra superior.
$form.Size = New-Object System.Drawing.Size(500,250) # Crea un nuevo objeto de tamaño (Size) de 500 píxeles de ancho por 250 píxeles de alto, y lo asigna a la propiedad Size del formulario.
$form.StartPosition = "CenterScreen" # Define una característica para que la ventana aparezca en el centro de la pantalla cuando se ejecute.

############# Define labels # Comentario que indica que el siguiente bloque de código se encarga de definir y configurar las etiquetas de texto (labels).
$textLabel1 = New-Object System.Windows.Forms.Label # Crea una nueva instancia del objeto Label para la primera etiqueta y la guarda en $textLabel1.
$textLabel1.Text = "Input 1:" # Asigna el texto "Input 1:" a la propiedad Text de la etiqueta.
$textLabel1.Left = 20 # Establece la posición horizontal (Left) de la etiqueta en 20 píxeles desde el borde izquierdo del formulario.
$textLabel1.Top = 20 # Establece la posición vertical (Top) de la etiqueta en 20 píxeles desde el borde superior del formulario.
$textLabel1.Width = 120 # Define el ancho de la etiqueta en 120 píxeles.

$textLabel2 = New-Object System.Windows.Forms.Label # Crea una nueva instancia del objeto Label para la segunda etiqueta y la guarda en $textLabel2.
$textLabel2.Text = "Input 2:" # Asigna el texto "Input 2:" a la propiedad Text de la segunda etiqueta.
$textLabel2.Left = 20 # Establece la posición horizontal (Left) de la segunda etiqueta en 20 píxeles.
$textLabel2.Top = 60 # Establece la posición vertical (Top) de la segunda etiqueta en 60 píxeles.
$textLabel2.Width = 120 # Define el ancho de la segunda etiqueta en 120 píxeles.

$textLabel3 = New-Object System.Windows.Forms.Label # Crea una nueva instancia del objeto Label para la tercera etiqueta y la guarda en $textLabel3.
$textLabel3.Text = "Input 3:" # Asigna el texto "Input 3:" a la propiedad Text de la tercera etiqueta.
$textLabel3.Left = 20 # Establece la posición horizontal (Left) de la tercera etiqueta en 20 píxeles.
$textLabel3.Top = 100 # Establece la posición vertical (Top) de la tercera etiqueta en 100 píxeles.
$textLabel3.Width = 120 # Define el ancho de la tercera etiqueta en 120 píxeles.

############# Textbox 1 # Comentario que indica que el siguiente bloque de código se encarga de crear el primer cuadro de texto.
$textBox1 = New-Object System.Windows.Forms.TextBox # Crea una nueva instancia del objeto TextBox (cuadro de entrada de texto) y la guarda en $textBox1.
$textBox1.Left = 150 # Establece la posición horizontal (Left) del cuadro de texto 1 en 150 píxeles.
$textBox1.Top = 20 # Establece la posición vertical (Top) del cuadro de texto 1 en 20 píxeles (alineado con la Etiqueta 1).
$textBox1.Width = 200 # Define el ancho del cuadro de texto 1 en 200 píxeles.

############# Textbox 2 # Comentario que indica que el siguiente bloque de código se encarga de crear el segundo cuadro de texto.
$textBox2 = New-Object System.Windows.Forms.TextBox # Crea una nueva instancia del objeto TextBox y la guarda en $textBox2.
$textBox2.Left = 150 # Establece la posición horizontal (Left) del cuadro de texto 2 en 150 píxeles.
$textBox2.Top = 60 # Establece la posición vertical (Top) del cuadro de texto 2 en 60 píxeles (alineado con la Etiqueta 2).
$textBox2.Width = 200 # Define el ancho del cuadro de texto 2 en 200 píxeles.

############# Textbox 3 # Comentario que indica que el siguiente bloque de código se encarga de crear el tercer cuadro de texto.
$textBox3 = New-Object System.Windows.Forms.TextBox # Crea una nueva instancia del objeto TextBox y la guarda en $textBox3.
$textBox3.Left = 150 # Establece la posición horizontal (Left) del cuadro de texto 3 en 150 píxeles.
$textBox3.Top = 100 # Establece la posición vertical (Top) del cuadro de texto 3 en 100 píxeles (alineado con la Etiqueta 3).
$textBox3.Width = 200 # Define el ancho del cuadro de texto 3 en 200 píxeles.

############# Default values # Comentario que indica que se establecerán valores iniciales para los cuadros de texto.
$defaultValue = "" # Define la variable $defaultValue como una cadena de texto vacía.
$textBox1.Text = $defaultValue # Asigna la cadena de texto vacía como valor inicial del cuadro de texto 1.
$textBox2.Text = $defaultValue # Asigna la cadena de texto vacía como valor inicial del cuadro de texto 2.
$textBox3.Text = $defaultValue # Asigna la cadena de texto vacía como valor inicial del cuadro de texto 3.

############# OK Button # Comentario que indica que el siguiente bloque de código se encarga de crear y configurar el botón "OK".
$button = New-Object System.Windows.Forms.Button # Crea una nueva instancia del objeto Button y la guarda en la variable $button.
$button.Left = 360 # Establece la posición horizontal (Left) del botón en 360 píxeles.
$button.Top = 140 # Establece la posición vertical (Top) del botón en 140 píxeles.
$button.Width = 100 # Define el ancho del botón en 100 píxeles.
$button.Text = "OK" # Asigna el texto "OK" que aparecerá dentro del botón.

############# Button click event # Comentario que indica que el siguiente bloque define qué sucede cuando se hace clic en el botón.
$button.Add_Click({ # Agrega un bloque de código (script block) que se ejecutará como un "evento" cuando se haga clic en el botón.
    $form.Tag = @{ # En el evento de clic, crea un Hashtable (diccionario) que almacena los valores de los cuadros de texto y lo asigna a la propiedad Tag del formulario.
        Box1 = $textBox1.Text # Dentro del Hashtable, asigna el valor actual del cuadro de texto 1 a la clave 'Box1'.
        Box2 = $textBox2.Text # Dentro del Hashtable, asigna el valor actual del cuadro de texto 2 a la clave 'Box2'.
        Box3 = $textBox3.Text # Dentro del Hashtable, asigna el valor actual del cuadro de texto 3 a la clave 'Box3'.
    } # Cierra la declaración del Hashtable.
    $form.Close() # Este comando cierra la ventana (el formulario) y detiene la ejecución del diálogo.
}) # Cierra el bloque de código del evento de clic.

############# Add controls # Comentario que indica que el siguiente bloque añade los elementos a la ventana.
$form.Controls.Add($button) # Agrega el botón ($button) a la colección de controles del formulario ($form).
$form.Controls.Add($textLabel1) # Agrega la etiqueta 1 ($textLabel1) al formulario.
$form.Controls.Add($textLabel2) # Agrega la etiqueta 2 ($textLabel2) al formulario.
$form.Controls.Add($textLabel3) # Agrega la etiqueta 3 ($textLabel3) al formulario.
$form.Controls.Add($textBox1) # Agrega el cuadro de texto 1 ($textBox1) al formulario.
$form.Controls.Add($textBox2) # Agrega el cuadro de texto 2 ($textBox2) al formulario.
$form.Controls.Add($textBox3) # Agrega el cuadro de texto 3 ($textBox3) al formulario.

############# Show dialog # Comentario que indica que la siguiente línea mostrará el formulario al usuario.
$form.ShowDialog() | Out-Null # Muestra el formulario como un diálogo modal; la ejecución del script se detiene hasta que se cierre la ventana, y '| Out-Null' evita que el resultado del diálogo se muestre en la consola.

############# Return values # Comentario que indica que el siguiente bloque devuelve los valores capturados al script principal.
return $form.Tag.Box1, $form.Tag.Box2, $form.Tag.Box3 # Devuelve los valores capturados de los cuadros de texto que se guardaron en la propiedad Tag del formulario, separados por comas.