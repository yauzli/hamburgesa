import 'package:flutter/material.dart';
import 'package:cruz/pages/first_pages.dart';
import 'package:cruz/pages/second_pages.dart';
import 'package:cruz/pages/third_pages.dart';

void main() => runApp(cruzApp());

class cruzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hamburguesa de cruz',
      home: PaginaInicio(),
    ); //fin materialapp
  }
} //fin clase cruzapp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
} //fin inicio clase con estado

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget child;
    switch (_index) {
      case 0:
        child = FlutterLogo();
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
    } //fin de switch
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.amber, size: 30.0), //icon
            title: Text('Casa')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.push_pin_outlined, color: Colors.red, size: 30.0), //icon
            title: Text('Articulos')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.purple, size: 30.0), //icon
            title: Text('Compras')), //
      ]), // bottom
    ); //fin de scaffold
  } //fin de widget
} //fin de paginainiciostate