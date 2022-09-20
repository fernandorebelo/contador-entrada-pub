import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppContador());
}

class AppContador extends StatefulWidget {
  const AppContador({super.key});

  @override
  State<AppContador> createState() => _AppContadorState();
}

class _AppContadorState extends State<AppContador> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Entrada - PUB',
      home: paginaPrincipal(),
    );
  }
}

paginaPrincipal() {
  return Scaffold(
    body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('img/pub.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
