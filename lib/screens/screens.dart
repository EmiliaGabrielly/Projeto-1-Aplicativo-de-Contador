import 'package:flutter/material.dart';

class ContadorScreens extends StatefulWidget {
  const ContadorScreens({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ContadorScreens> createState() => _ContadorScreensState();
}

class _ContadorScreensState extends State<ContadorScreens> {
  int _counter = 0; // Variável para armazenar o valor do contador

  void _incrementCounter() {
    setState(() {
      _counter++; // Incrementa o valor do contador em 1
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--; // Decrementa o valor do contador em 1
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador App'), // Título da barra de aplicativo
      ),
      body: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contagem: $_counter', // Exibe o valor atual do contador
              style: TextStyle(fontSize: 24),
            ),

            SizedBox(height: 20), // Espaço em branco
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Icon(Icons.add), // Botão de incremento
                ),

                SizedBox(width: 10), // Espaço em branco
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: Icon(Icons.remove), // Botão de decremento
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
