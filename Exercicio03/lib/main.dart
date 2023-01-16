import 'package:flutter/material.dart';

void main() {
  runApp(
    myapp(),
  );
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pageOne(),
    );
  }
}

class pageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.lightBlue,
            Color.fromARGB(255, 0, 88, 161),
          ],
        )),
        child: conteudoPageOne(),
      ),
    );
  }
}

class conteudoPageOne extends StatefulWidget {
  const conteudoPageOne({super.key});

  @override
  State<conteudoPageOne> createState() => _conteudoPageOneState();
}

class _conteudoPageOneState extends State<conteudoPageOne> {
  int numero = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Contador",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Text(
            "$numero",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 3, 16, 94),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  print("Voce clicou");
                  numero++;
                  setState(() {});
                },
                child: Text("Somar ponto"),
                style: TextButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 255, 255, 255),
                  backgroundColor: Color.fromARGB(255, 0, 94, 255),
                  fixedSize: Size(150, 30),
                  side: BorderSide(
                      width: 0.8, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              Padding(padding: EdgeInsets.all(50)),
              TextButton(
                onPressed: () {
                  numero--;
                  if (numero < 0) {
                    numero = 0;
                  }
                  setState(() {});
                },
                child: Text("Subtrair ponto"),
                style: TextButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 255, 255, 255),
                  backgroundColor: Color.fromARGB(255, 0, 94, 255),
                  fixedSize: Size(150, 30),
                  side: BorderSide(
                      width: 0.8, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
