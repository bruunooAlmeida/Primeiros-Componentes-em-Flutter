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
                height: 100,
              ),
              Container(
                width: 150,
                height: 150,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: const Icon(Icons.person, size: 125, color: Colors.blue),
              ),
              Container(
                  width: double.infinity,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  height: 30,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Expanded(
                        flex: 3,
                        child: const Text("Informe seu Email:"),
                      ),
                      Expanded(
                        flex: 3,
                        child: const Text("Email"),
                      ),
                    ],
                  )),
              Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                height: 30,
                alignment: Alignment.center,
                child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text("Informe a Senha"),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("Senha"),
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                color: Colors.green,
                height: 30,
                alignment: Alignment.center,
                child: const Text("Login"),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: 30,
                alignment: Alignment.center,
                child: const Text("Cadastro"),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
