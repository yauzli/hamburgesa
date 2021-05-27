import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cruz hamburguesa App',
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
                 child: FadeInImage(
                placeholder: AssetImage('assets/loading.gif'),
                image: NetworkImage('http://wendysmx.net/img/logofooter.png'),//imageeeeeeeen
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