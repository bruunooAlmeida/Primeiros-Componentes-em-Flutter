import 'package:flutter/material.dart';
import 'package:tilhaapp/repositories/Linguagens_repository.dart';
import 'package:tilhaapp/repositories/nivel_repositories.dart';
import 'package:tilhaapp/shared/widgets/text_label.dart';

class DadosCadastraisPage extends StatefulWidget {
  const DadosCadastraisPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DadosCadastraisPage> createState() => _DadosCadastraisPageState();
}

class _DadosCadastraisPageState extends State<DadosCadastraisPage> {
  var nomeController = TextEditingController(text: "");
  var dataNascController = TextEditingController(text: "");
  DateTime? dataNasc;
  var nivelRepository = NivelRepository();
  var linguagensRepository = LinguagensRepository();
  var nivelSelecionado = "";
  var niveis = [];
  var linguagens = [];
  var linguagensSelecionadas = [];
  double salarioEscolhido = 0;
  int tempoExperiencia = 0;

/*
  Text returnText(String texto) {
    return Text(texto,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700));
  }
*/
  @override
  void initState() {
    niveis = nivelRepository.retornaNiveis();
    linguagens = linguagensRepository.retornaLinguagens();
    super.initState();
  }

  List<DropdownMenuItem<int>> returnItens(int quantidadeMaxima) {
    var items = <DropdownMenuItem<int>>[];
    for (var i = 0; i < quantidadeMaxima; i++) {
      items.add(
        DropdownMenuItem(value: i, child: Text(i.toString())),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Meuds dados")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        // ignore: prefer_const_literals_to_create_immutables
        child: ListView(
          //  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            TextLabel(texto: "Nome"),
            TextField(
              controller: nomeController,
            ),
            const TextLabel(texto: "Data de Nascimento"),
            TextField(
              controller: dataNascController,
              readOnly: true,
              onTap: () async {
                var data = await showDatePicker(
                    context: context,
                    initialDate: DateTime(2000, 1, 1),
                    firstDate: DateTime(1900, 1, 1),
                    lastDate: DateTime(2025, 12, 31));
                if (data != null) {
                  dataNascController.text = data.toString();
                  dataNasc = data;
                }
              },
            ),
            const TextLabel(texto: "Nivel de experiencia"),
            Column(
                children: niveis
                    .map((nivel) => RadioListTile(
                        selected: nivelSelecionado == nivel.toString(),
                        title: Text(nivel.toString()),
                        value: nivel.toString(),
                        groupValue: nivelSelecionado,
                        onChanged: (value) {
                          setState(() {
                            nivelSelecionado = value.toString();
                          });
                        }))
                    .toList()),
            const TextLabel(texto: "Linguagens preferidas"),
            Column(
                children: linguagens
                    .map((linguagen) => CheckboxListTile(
                        dense: true,
                        title: Text(linguagen),
                        value: linguagensSelecionadas.contains(linguagen),
                        onChanged: (bool? value) {
                          if (value!) {
                            setState(() {
                              linguagensSelecionadas.add(linguagen);
                            });
                          } else {
                            setState(() {
                              linguagensSelecionadas.remove(linguagen);
                            });
                          }
                        }))
                    .toList()),
            TextLabel(
                texto:
                    "Preferencia Salarial R\$ ${salarioEscolhido.round().toString()}"),
            Slider(
                min: 0,
                max: 10000,
                value: salarioEscolhido,
                onChanged: (double value) {
                  setState(() {
                    salarioEscolhido = value;
                  });
                }),
            const TextLabel(texto: "Tempo de Experiencia"),
            DropdownButton(
              value: tempoExperiencia,
              isExpanded: true,
              items: returnItens(50),
              onChanged: (value) {
                setState(() {
                  tempoExperiencia = int.parse(value.toString());
                });
              },
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Salvar"),
            )
          ],
        ),
      ),
    );
  }
}
