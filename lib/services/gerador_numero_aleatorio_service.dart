import 'dart:math';

class GeradorNumeroAleatorioService {
  static int gerarNumeroAleatorio(int max) {
    Random numeroGerado = Random();
    return numeroGerado.nextInt(max);
  }
}
