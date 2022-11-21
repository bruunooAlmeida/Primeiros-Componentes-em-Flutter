import 'package:flutter/material.dart';
import 'package:tilhaapp/pages/Main_Page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController(text: "email@email.com");
  var senhaController = TextEditingController();
  var isEncondeTexto = true;

  bool get kDebugMode => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(250, 30, 25, 44),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
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
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Faça seu Login e make the change_",
                    style: TextStyle(fontSize: 14, color: Colors.white)),
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
                    // ignore: prefer_const_constructors
                    child: TextField(
                      controller: emailController,
                      onChanged: (value) {},
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(top: 0),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple)),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  height: 30,
                  alignment: Alignment.center,
                  // ignore: prefer_const_constructors
                  child: TextField(
                    controller: senhaController,
                    obscureText: isEncondeTexto,
                    onChanged: (value) {},
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 0),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple)),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple)),
                        hintText: "Senha",
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: const Icon(Icons.lock,
                            color: Colors.deepPurpleAccent),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isEncondeTexto = !isEncondeTexto;
                            });
                          },
                          child: Icon(
                              isEncondeTexto
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.deepPurpleAccent),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  height: 30,
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        if (emailController.text == "email@email.com" &&
                            senhaController.text == "123") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainPage()));
                        } else {}
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey.shade700),
                      ),
                      child: const Text(
                        "Entrar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  height: 30,
                  alignment: Alignment.center,
                  child: const Text(
                    "Esqueci minha senha",
                    style: TextStyle(color: Colors.amber),
                  ),
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
      ),
    );
  }
}
