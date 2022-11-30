import 'package:flutter/material.dart';
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
  var niveis = [];
  var nivelSelecionado = '';
/*
  Text returnText(String texto) {
    return Text(texto,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700));
  }
*/
  @override
  void initState() {
    niveis = nivelRepository.retornaNiveis();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Meuds dados")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        // ignore: prefer_const_literals_to_create_immutables
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                          print(value);
                          setState(() {
                            nivelSelecionado = value.toString();
                          });
                        }))
                    .toList()),

            TextButton(
              onPressed: () {
                print(dataNasc);
              },
              child: const Text("Salvar"),
            )
          ],
        ),
      ),
    );
  }
}
