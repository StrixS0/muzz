import 'package:flutter/material.dart';
import 'package:muzz_proyecto/crear_cuenta.dart';

import 'inicio_de_sesion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Bienvenida());
  }
}

class Bienvenida extends StatelessWidget {
  const Bienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonWidth = 250; // Ancho deseado para los botones

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/login.png'), // Ruta de tu imagen de fondo
            fit: BoxFit.cover, // Ajusta la imagen al tamaño del contenedor
          ),
        ),
        padding: const EdgeInsets.only(top: 280),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => (const LoginPage())));

                  // Acción para iniciar sesión con correo o algo similar
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 42, 46, 49), // Cambia el color de fondo del botón
                  minimumSize: Size(
                      buttonWidth, 60), // Define el tamaño mínimo del botón
                ),
                child: const Text('Iniciar sesión'),
              ),
              const SizedBox(height: 20), // Espacio entre los botones
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => (const CreateAccountPage())));
                  // Acción para crear una cuenta
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 42, 46, 49), // Cambia el color de fondo del botón
                  minimumSize: Size(
                      buttonWidth, 60), // Define el tamaño mínimo del botón
                ),
                child: const Text('Crear cuenta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
