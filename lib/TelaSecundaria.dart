// ignore_for_file: file_names, prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  String? valor;

  TelaSecundaria({this.valor});

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Tela Secundaria"), backgroundColor: Colors.blue),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          /* 
            WIDGET -> utilizado para acessar variaveis do construtor da classe 
            (linha 6 e 8). Pode-se comparar à ideia do getter and setter
          */
          children: [Text("Segunda tela! Valor passado: ${widget.valor}")],
        ),
      ),
    );
  }
}
