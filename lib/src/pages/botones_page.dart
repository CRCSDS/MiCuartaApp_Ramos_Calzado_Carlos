import 'package:flutter/material.dart';

import 'dart:math';
import 'dart:ui';


class BotonesPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(context)
              ],
            ),
          )

        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }


  Widget _fondoApp(){

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );


    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]
          )
        ),
      )
    );
    
    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosa
        )
      ],
    );

  }

  Widget _titulos() {

    final Titulo = TextStyle(color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold, shadows: <Shadow>[
      Shadow(
        offset: Offset(0.0, 4.0),
        blurRadius: 7.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ],
    );

    final Subtitulo = TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold, shadows: <Shadow>[
      Shadow(
        offset: Offset(0.0, 4.0),
        blurRadius: 7.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ],
    );

    final Texto = TextStyle(color: Colors.white, fontSize: 20.0, shadows: <Shadow>[
      Shadow(
        offset: Offset(0.0, 3.0),
        blurRadius: 5.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ],
    );


    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 40.0, bottom: 40.0),
        child: Container
          (child:Text
          ("COVENANTS", style: Titulo, textAlign: TextAlign.center),
        ),
      ),
    );

    /*return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Covenants', style: TextStyle( color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('Classify this transaction into a particular category', style: TextStyle( color: Colors.white, fontSize: 18.0 )),
          ],
        ),
      ),
    );*/

  }

  Widget _bottomNavigationBar(BuildContext context) {

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.lightBlueAccent,
        textTheme: Theme.of(context).textTheme
          .copyWith( caption: TextStyle( color: Colors.black38) )
      ),
      child: BottomNavigationBar(
        
        items: [
          BottomNavigationBarItem(
            icon: Icon( Icons.calendar_today, size: 30.0 ),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.bubble_chart, size: 30.0 ),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.supervised_user_circle, size: 30.0 ),
            title: Container()
          ),
        ],
      ),
    );

  }


  Widget _botonesRedondeados(BuildContext context) {

    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado( Colors.blue, Icons.border_all, 'General', context, 'scroll'),
            _crearBotonRedondeado( Colors.red, Icons.directions_bus, 'Bus', context, 'covenants'),
          ]
        ),
       TableRow(
          children: [
            _crearBotonRedondeado( Colors.greenAccent, Icons.shop, 'Buy', context, 'covenants'),
            _crearBotonRedondeado( Colors.lightBlueAccent, Icons.insert_drive_file, 'File', context, 'basico'),
          ]
        ),

        /* TableRow(
          children: [
            _crearBotonRedondeado( Colors.blueAccent, Icons.movie_filter, 'Entertaiment' ),
            _crearBotonRedondeado( Colors.green, Icons.cloud, 'Grocery' ),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado( Colors.red, Icons.collections, 'Photos' ),
            _crearBotonRedondeado( Colors.teal, Icons.help_outline, 'General' ),
          ]
        ) */
      ],
    );

  }

  Widget _crearBotonRedondeado( Color color, IconData icono, String texto, BuildContext context, String string) {
 
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
        child: Container(
          height: 150.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(50.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox( height: 6.0 ),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,

                child: GestureDetector(
                  onTap: ()=> Navigator.pushNamed(context, string),
                  child: Icon( icono, color: Colors.white, size: 30.0 ),
              ),
              ),


              Text( texto , style: TextStyle( color: color )),
              SizedBox( height: 5.0 )
            ],
          ),
 
        ),
      ),
    );
  }


}