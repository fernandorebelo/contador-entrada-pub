import 'package:app_contador/util.dart';
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
  int contador = 0;
  bool get vazio => contador == 0;
  bool get cheio => contador == 10;

  incrementar() {
    setState(() {
      contador++;
    });
  }

  decrementar() {
    setState(() {
      contador--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Entrada - PUB',
      home: paginaPrincipal(),
    );
  }

  paginaPrincipal() {
    return Scaffold(
      body: Container(
        decoration: Util().imagemFundo('pub.jpeg'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Util().criaTexto(cheio ? 'LOTADO' : 'Pode ENTRAR', 30,
                cheio ? Colors.red : Colors.green),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Util().criaTexto('$contador', 100, Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Util().criaBotao(
                    vazio ? null : decrementar,
                    'Saiu',
                    20,
                    Colors.black,
                    vazio ? Colors.white.withOpacity(0.5) : Colors.white),
                const SizedBox(
                  width: 30,
                ),
                Util().criaBotao(
                    cheio ? null : incrementar,
                    'Entrou',
                    20,
                    Colors.black,
                    cheio ? Colors.white.withOpacity(0.5) : Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }
}
