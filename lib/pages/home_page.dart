import 'package:flutter/material.dart';

import '../services/gerador_numero_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var qtdclick = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gerando Numero Aleatorio"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(16, 10, 16, 10),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text('Quantidade de click: $qtdclick'),
          Text('Numero gerado: $numeroGerado'),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              qtdclick++;
              numeroGerado =
                  GeradorNumeroAleatorioService.gerarNumeroAleatorio(1000);
            });
          }),
    );
  }
}
