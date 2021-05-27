import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'hamburguesa App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber[300],
      ),
      backgroundColor: Colors.blue[200],
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                child: new Image.asset(
                  'assets/images/logofooter.png',
                ),
              ),
              Text(
                "Bienvenido!",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  } // widget
} // first page
