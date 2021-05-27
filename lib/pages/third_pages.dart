import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple[300],
        title: Text('NOSOTROS COMO EMPRESA'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              _crearCard1(),
              _crearCard2(),
              _crearCard3()
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearCard1() {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              '¿QUE SOMOS?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Somos una empresa socialmente responsable que siempre trata de ofrecerte los mejores servicios en la mejor calidad como siempre, es por eso que somos la empresa numero 1 en el pais en nuestro sitio')
          ],
        ),
      ),
    );
  }

  Widget _crearCard2() {
    return Card(
      elevation: 5,
      color: Colors.purple[300],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              'NUESTROS CLIENTES NOS RESPALDAN',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Dado en las encuestas realizadas cada año y cada dia en nuestras multiples sucursales hemos terminado nuestros 15 años trabajando para ti con un promedio de 4.7 estrellas en servicio al cliente,4.8 en cuestion de productos y un 4.8 en servicios a domicilio siendo de igual forma numero 1 en las encuestas nacionales de comida rapida',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearCard3() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              child: FadeInImage(
                placeholder: AssetImage('assets/loading.gif'),
                image: NetworkImage('https://raw.githubusercontent.com/vianeyalejandra03/mis_imagenes/main/burguer.jpg'),//imageeeeeeeen
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('nuestros servicios-2021'),
            )
          ],
        ),
      ),
    );
  } // widget
} // first page