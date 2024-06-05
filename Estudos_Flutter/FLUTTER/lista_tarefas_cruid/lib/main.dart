import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gedocs_app/screen/home.dart';

// Função principal que inicia o aplicativo
void main() {
  runApp(
    // ProviderScope é necessário para usar o Riverpod
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

// Widget principal do aplicativo
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Riverpod Demo',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      routes: {'/': (context) => const Home()},

      // home: MyHomePage(),
    );
  }
}
