# PROMTP
Actúa como Senior Flutter UI Engineer especializado en replicación exacta de interfaces móviles.

Tu tarea es recrear exactamente la pantalla mostrada en la imagen proporcionada, manteniendo la misma estructura visual, gradiente, distribución de elementos, botones, textos e iconos.

La implementación debe ser en Flutter usando Dart, con Material Design, y todo el código debe entregarse en un solo archivo main.dart.

Requisitos técnicos
Lenguaje

Dart

Framework Flutter

Archivo

Todo el código debe estar en un solo archivo main.dart

Arquitectura básica

Usar:

MaterialApp
Scaffold
Stack
Container
Column
Padding
TextField
ElevatedButton
BottomNavigationBar
Icon
Layout general

La pantalla debe dividirse en 3 secciones principales:

Stack
 ├ Background gradient
 ├ Formulario (centro)
 └ Bottom Navigation Bar
Fondo con gradiente (desvanecido azul)

El fondo debe tener un gradiente vertical azul con desvanecido a blanco.

Usar:

LinearGradient

Colores aproximados:

Color(0xFF0F5F7A)
Color(0xFF2C8CAB)
Color(0xFFEFEFEF)

Dirección:

begin: Alignment.topCenter
end: Alignment.bottomCenter

Debe ocupar toda la pantalla.

Encabezado

En la parte superior:

Row

Elementos:

Icon(Icons.arrow_back)
Text("DetalleGasto")

Propiedades:

Titulo:

fontSize: 30
fontWeight: FontWeight.bold
color: Colors.black

Icono:

size: 28
color: Colors.black
Formulario

Debajo del título debe existir una columna con 4 campos.

Campos:

Monto
Categoria
Descripcion
Fecha

Cada campo debe ser un:

TextField

Estilo:

filled: true
fillColor: Colors.white
border: OutlineInputBorder
borderRadius: 5

Espaciado vertical:

SizedBox(height: 20)

Ancho aproximado:

250px
Botón Actualizar Gasto

Botón verde centrado.

Texto:

Actualizar Gasto

Color:

Color(0xFF2ECC71)

Tamaño aproximado:

width: 260
height: 60

Texto:

fontSize: 20
fontWeight: bold
color: black
Botón Eliminar Gasto

Botón rojo debajo del anterior.

Texto:

Eliminar Gasto

Color:

Colors.red

Mismo tamaño que el anterior.

Bottom Navigation Bar

Debe existir una barra inferior con 4 iconos y texto.

Items:

Inicio
Gastos
Ingresos
Perfil

Iconos:

Icons.home
Icons.attach_money
Icons.trending_up
Icons.person

Color del fondo:

Colors.grey[200]

El item Gastos debe aparecer seleccionado.

Espaciado general

Entre elementos usar:

SizedBox(height: 20)
SizedBox(height: 30)
SizedBox(height: 40)

El formulario debe estar centrado horizontalmente.

UI exacta

La pantalla final debe coincidir con la imagen en:

gradiente azul desvanecido

titulo grande

flecha izquierda

inputs blancos

botón verde

botón rojo

barra inferior con iconos

Reglas de implementación

El código debe:

ser compatible con Flutter 3+

usar Material widgets

incluir comentarios explicando cada sección

evitar dependencias externas

ser simple para principiantes

Salida requerida

La IA debe devolver solo el archivo completo:

main.dart

No debe incluir:

explicaciones fuera del código

texto adicional

fragmentos incompletos
# MYWEB
![alt text](image-3.png)
# ANDROID
![alt text](image-2.png)
