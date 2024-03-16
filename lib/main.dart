import 'package:flutter/material.dart';
import 'package:muzz_proyecto/bienvenida.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter App',
      // Establecer directamente la página que deseas abrir al iniciar la aplicación
      home: Bienvenida(),
    );
  }
}

