import 'dart:math';
import 'package:cara_ou_coroa/TelaJogo.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(112, 194, 147, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Image.asset("images/logo.png"),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaJogo(Jogar()),
                  ),
                );
              },
              child: Image.asset("images/botao_jogar.png"),
            ),
          ],
        ),
      ),
    );
  }

  String Jogar() {
    var jogadas = ["images/moeda_cara.png", "images/moeda_coroa.png"];
    int jogo = Random().nextInt(2);
    return jogadas[jogo];
  }
}
