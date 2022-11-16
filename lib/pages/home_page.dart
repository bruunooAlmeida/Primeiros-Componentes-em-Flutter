import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        title: const Text("Gerador de Números Aleatórios"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(16, 10, 16, 10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Quantidade de click: $qtdclick'),
          Text('Número gerado: $numeroGerado'),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                  color: Colors.amber,
                  child: Text("20", style: GoogleFonts.abel(fontSize: 20)),
                ),
              ),
              Container(
                color: Colors.red,
                child: Text("20", style: GoogleFonts.abel(fontSize: 20)),
              ),
              Container(
                color: Colors.cyan,
                child: Text("20", style: GoogleFonts.abel(fontSize: 20)),
              )
            ],
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          backgroundColor: Colors.teal,
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
