import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(
    meuapp(),
  );
}

class meuapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: pageOne(),
      // home: pageTwo(),
      // home: login(),
      routes: {
        "/": (context) => login(),
        "pageOne": (context) => pageOne(),
        "pageTwo": (context) => pageTwo(),
        "pageThree": (context) => pageThree(),
      },
    );
  }
}

class pageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [Text("Page one."), Icon(Icons.arrow_right_alt)]),
      ),
      drawer: Drawer(
        child: menu(),
      ),
      body: Container(
        child: conteudoPageOne(),
      ),
    );
  }
}

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlutterLogo(),
        Text("Designed by Gustavo Rocha."),
        Icon(
          Icons.copyright,
        ),
        TextButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, "pageOne");
          },
          child: Text("Pagina 1"),
        ),
        TextButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, "pageTwo");
          },
          child: Text("Pagina 2"),
        ),
        TextButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, "PageThree");
          },
          child: Text("Pagina 3"),
        ),
        TextButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, "/");
          },
          child: Text("Logout"),
        ),
      ],
    );
  }
}

class conteudoPageOne extends StatefulWidget {
  const conteudoPageOne({super.key});
  @override
  State<conteudoPageOne> createState() => _conteudoPageOneState();
}

class _conteudoPageOneState extends State<conteudoPageOne> {
  bool status = false;

  Color cor1 = Colors.green;
  Color cor2 = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            color: cor1,
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            width: 200,
            height: 200,
            color: cor2,
          ),
          Padding(padding: EdgeInsets.all(20)),
          Switch(
            value: status,
            onChanged: (value) {
              status = value;
              if (status) {
                cor1 = Colors.red;
                cor2 = Colors.black;
              } else {
                cor1 = Colors.green;
                cor2 = Colors.yellow;
              }
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}

class pageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Row(
            children: [Icon(Icons.arrow_right_alt), Text("Page Two")],
          )),
      drawer: Drawer(
        child: menu(),
      ),
      body: Container(
        child: conteudoPageTwo(),
      ),
    );
  }
}

class pageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: menu(),
      ),
      body: pageThree(),
    );
  }
}

class conteudoPageTwo extends StatefulWidget {
  const conteudoPageTwo({super.key});

  @override
  State<conteudoPageTwo> createState() => _conteudoPageTwoState();
}

class _conteudoPageTwoState extends State<conteudoPageTwo> {
  double tamanho = 0;
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            value: tamanho,
            onChanged: (value) {
              tamanho = value;
              num = tamanho.toInt();
              setState(() {});
            },
            min: 0,
            max: 100,
          ),
          Text(
            "$num",
            style: TextStyle(
              fontSize: tamanho,
            ),
          )
        ],
      ),
    );
  }
}

class login extends StatelessWidget {
  String? email;
  String? senha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (entradaEmail) {
                  email = entradaEmail;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                onChanged: (entradaSenha) {
                  senha = entradaSenha;
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Senha",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
              Padding(padding: EdgeInsets.all(15)),
              TextButton(
                onPressed: () {
                  if (email == "fit@123" && senha == "123") {
                    print("entrou");
                    Navigator.popAndPushNamed(context, "pageOne");
                  } else {
                    print("deseja trocar a senha");
                  }
                },
                child: Text("Login"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blueAccent, //cor do fundo

                  onSurface: Colors.grey,
                  padding: const EdgeInsets.all(25), //margem no botão ou
                  //fixedSize: const Size(100, 100), //tamanho fixo da margem
                  shape: RoundedRectangleBorder(
                    //side: BorderSide(color: Colors.green, width: 5), // borda do botão
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class conteudoPageThree extends StatefulWidget {
  @override
  State<conteudoPageThree> createState() => _conteudoPageThreeState();
}

class _conteudoPageThreeState extends State<conteudoPageThree> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int x = 0; x < 1000; x++)
            ListTile(
              leading: Icon(
                Icons.person_add_alt,
              ),
              title: Text("Nome do contato"),
              subtitle: Text("Sobrenome"),
              //icone no fim
              trailing: Icon(
                Icons.assignment,
              ),
              //espacamento entre as linhas
              isThreeLine: true,
              //estiliza
              //selected: true,
              //cor de fundo
            ),
        ],
      ),
    );
  }
}
