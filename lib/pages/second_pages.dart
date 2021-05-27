import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _height = logicalSize.height;
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(2.0),
                  child: Stack(
                    children: <Widget>[
                      Align(
                          child: new Image(
                        width: 300.0,
                        height: 200.0,
                        image: new AssetImage('assets/images/logofooter.png'),
                      ) //fin de image
                          )
                    ], //fin de widget
                  ), //fin de stack
                ), //container
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(hintText: "mensaje", icon: Icon(Icons.email)), //fin de inputdecoration
                ), //fin de textfield
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(hintText: "Telefono", icon: Icon(Icons.vpn_key)), //fin de inputdecoration
                ), //fin de textfield
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(hintText: "Sucursal", icon: Icon(Icons.vpn_key)), //fin de inputdecoration
                ), //fin de textfield
                SizedBox(
                  height: 40,
                ),
               
              ], //fin de widget
            ), //fin de column
          ], //fin de widget
        ), //fin de columna
      ) //fin de container
          ), //safearea
    ); //fin de scaffold
  } // widget
} // first page
