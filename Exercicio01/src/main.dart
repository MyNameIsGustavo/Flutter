import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Linhas e colunas em Flutter.")),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                  child: Center(child: Text("Blue")),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.yellow,
                      child: Center(child: Text("Yellow")),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.red,
                      child: Center(child: Text("Red")),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.all(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.purple,
                      child: Center(child: Text("Purple")),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.green,
                      child: Center(child: Text("Green")),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.lime,
                      child: Center(child: Text("Lime")),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
