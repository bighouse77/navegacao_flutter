// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:navegacao_flutter/TelaSecundaria.dart';

void main() {
  runApp(MaterialApp(
    home: TelaPrincipal(),
  ));
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Tela Principal"), backgroundColor: Colors.orange),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            RaisedButton(
                child: Text("Ir para a segunda tela"),
                padding: EdgeInsets.all(16),
                onPressed: () {
                  // para navegar para outra pagina! - push, é para abrir uma pagina, pop é para fechar a pagina
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => TelaSecundaria(valor: "Mauricio")
                    )
                  );
                }),
          ],
        ),
      ),
    );
  }
}
