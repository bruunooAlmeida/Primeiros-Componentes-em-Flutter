import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Expanded(
                    flex: 8,
                    child: Image.network(
                      "https://hermes.digitalinnovation.one/assets/diome/logo.png",
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Já tem cadastro ?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Faça seu Login e make the change_",
                  style: TextStyle(fontSize: 14)),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  height: 30,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Expanded(
                        flex: 3,
                        child: Text("Informe o Email:"),
                      ),
                      const Expanded(
                        flex: 3,
                        child: Text("Email"),
                      )
                    ],
                  )),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                height: 30,
                alignment: Alignment.center,
                child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Expanded(flex: 3, child: Text("Informe a senha:")),
                      const Expanded(flex: 3, child: Text("Senha")),
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                color: Colors.deepPurpleAccent,
                height: 30,
                alignment: Alignment.center,
                child: const Text("Login"),
              ),
              Expanded(child: Container()),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: 30,
                alignment: Alignment.center,
                child: const Text("Esqueci minha senha"),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: 30,
                alignment: Alignment.center,
                child: const Text(
                  "Criar Conta",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
