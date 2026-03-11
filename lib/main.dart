import 'package:flutter/material.dart';

void main() {
  runApp(const FinanTrackApp());
}

/// Aplicación principal
class FinanTrackApp extends StatelessWidget {
  const FinanTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Detalle Gasto',
      home: DetalleGastoScreen(),
    );
  }
}

/// Pantalla de Detalle de Gasto
class DetalleGastoScreen extends StatelessWidget {
  const DetalleGastoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Estructura principal usando Stack para el fondo y el contenido
      body: Stack(
        children: [
          // 1. Fondo con gradiente desvanecido azul
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF0F5F7A), // Azul oscuro
                  Color(0xFF2C8CAB), // Azul medio
                  Color(0xFFEFEFEF), // Desvanecido a gris muy claro/blanco
                ],
              ),
            ),
          ),
          
          // 2. Contenido principal (Encabezado y Formulario)
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Encabezado
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 40.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.arrow_back,
                          size: 28,
                          color: Colors.black,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "DetalleGasto",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'Times New Roman', // Fuente serif similar a la imagen
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Formulario centrado
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        _construirCampoTexto("Monto"),
                        const SizedBox(height: 20),
                        
                        _construirCampoTexto("Categoria"),
                        const SizedBox(height: 20),
                        
                        _construirCampoTexto("Descripcion"),
                        const SizedBox(height: 20),
                        
                        _construirCampoTexto("Fecha"),
                        
                        const SizedBox(height: 40),

                        // Botón Actualizar Gasto
                        SizedBox(
                          width: 260,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF2ECC71), // Verde
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero, // Bordes cuadrados como en la imagen
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Actualizar Gasto",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'Times New Roman',
                              ),
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 20),

                        // Botón Eliminar Gasto
                        SizedBox(
                          width: 260,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red, // Rojo
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Eliminar Gasto",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'Times New Roman',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // 3. Bottom Navigation Bar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: const Border(
            top: BorderSide(color: Colors.black12, width: 1),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.grey[200],
          type: BottomNavigationBarType.fixed, // Para mostrar todos los iconos y textos
          currentIndex: 1, // El item "Gastos" aparece seleccionado
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black87,
          elevation: 0,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Times New Roman'),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Times New Roman'),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 35),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money, size: 35),
              label: 'Gastos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.trending_up, size: 35),
              label: 'Ingresos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 35),
              label: 'Perfil',
            ),
          ],
        ),
      ),
    );
  }

  /// Método auxiliar para construir los campos de texto
  Widget _construirCampoTexto(String texto) {
    return SizedBox(
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          hintText: texto,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'Times New Roman',
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none, // Oculta el borde para que se vea como en la imagen
          ),
        ),
      ),
    );
  }
}