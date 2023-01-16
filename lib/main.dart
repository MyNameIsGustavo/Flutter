import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Melhor aplicativo!"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey,
      body: Center(
          child: Container(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Mobile e Iot",
            style:
                TextStyle(fontSize: 40, color: Color.fromARGB(255, 40, 44, 40)),
          ),
          Container(
            height: 100,
            width: 300,
            color: Colors.red,
            child: Center(
              child: Text("Flutter",
                  style: TextStyle(fontSize: 40, color: Colors.white)),
            ),
          )
        ],
      ))),
    )),
  );
}
