import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class ScrollPage extends StatefulWidget {
  @override
  _ScrollPageState createState() => new _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
  int photoIndex = 0;

  List<String> photos = [
    'assets/Bastion_Postcard.jpg',
    'assets/Maldraxxus_Postcard.jpg',
    'assets/Ardenweald_Postcard.jpg',
    'assets/Revendreth_Postcard.jpg',
    'assets/Maw_Postcard.jpg'
  ];

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[_pagina1(), _pagina2(), _pagina3(context)],
    ));
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        /*_colorFondo1(),*/
        _imagenFondo1(),
        _textos1(),
      ],
    );
  }

  /*Widget _colorFondo1() {

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );

  }*/

  Widget _imagenFondo1() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll1.png'),
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _textos1() {
    final Titulo = TextStyle(
      color: Colors.white,
      fontSize: 35.0,
      fontWeight: FontWeight.bold,
      shadows: <Shadow>[
        Shadow(
          offset: Offset(0.0, 4.0),
          blurRadius: 7.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ],
    );

    final Subtitulo = TextStyle(
      color: Colors.white,
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
      shadows: <Shadow>[
        Shadow(
          offset: Offset(0.0, 4.0),
          blurRadius: 7.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ],
    );

    final Texto = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      shadows: <Shadow>[
        Shadow(
          offset: Offset(0.0, 3.0),
          blurRadius: 5.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ],
    );

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Container(
              child: FadeInUp(
                child: Text("BRAVE THE BEYOND",
                    style: Titulo, textAlign: TextAlign.center),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Container(
                child: FadeInUp(
              child: Text("The veil between life and death is no more...",
                  style: Subtitulo, textAlign: TextAlign.center),
            )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Image.asset(
              'assets/chains3.png',
              height: 35,
              width: 400,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
            child: Container(
                child: FadeInDown(
                    child: Text(
                        "With a single act of destruction, Sylvanas Windrunner has ripped open the way to the afterlife. Azeroth’s staunchest defenders have been dragged into all-consuming darkness.",
                        style: Texto,
                        textAlign: TextAlign.center))),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
            child: Container(
                child: FadeInDown(
              child: Text(
                  "An ancient force of death threatens to break its bonds and unravel reality. Hidden realms of wonder and horror await any who would pass to the other side. The Shadowlands is home to an entire realm of the departed; it is a world between worlds whose delicate balance preserves life and death itself.",
                  style: Texto,
                  textAlign: TextAlign.center),
            )),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Container(
                child: Icon(Icons.keyboard_arrow_down,
                    size: 50.0, color: Colors.white)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.0),
            child: Image.asset(
              'assets/Bar.png',
              height: 33,
              width: 400,
              fit: BoxFit.fill,
            ),
          ),

          /*
          SizedBox(height: 20.0 ),
          Text('Titulo', style: Titulo ),
          Text('Miércoles', style: Texto ),
          Expanded( child: Container() ),
          Icon( Icons.keyboard_arrow_down, size: 70.0, color: Colors.lightBlueAccent )*/
        ],
      ),
    );
  }

  /* Pagina nueva */

  Widget _pagina2() {
    return Stack(
      children: <Widget>[
        _colorFondo2(),
        _imagenFondo2(),
        _textos2(),
      ],
    );
  }

  Widget _colorFondo2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll2.jpg'),
        fit: BoxFit.fitHeight,
      ),
    );
  }

  Widget _textos2() {
    final Titulo = TextStyle(
      color: Colors.white,
      fontSize: 35.0,
      fontWeight: FontWeight.bold,
      shadows: <Shadow>[
        Shadow(
          offset: Offset(0.0, 4.0),
          blurRadius: 7.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ],
    );

    final Subtitulo = TextStyle(
      color: Colors.white,
      fontSize: 17.0,
      fontWeight: FontWeight.bold,
      shadows: <Shadow>[
        Shadow(
          offset: Offset(0.0, 4.0),
          blurRadius: 7.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ],
    );

    final Texto = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      shadows: <Shadow>[
        Shadow(
          offset: Offset(0.0, 3.0),
          blurRadius: 5.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ],
    );

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 35.0),
            child: Container(
                child: ZoomIn(
                    child: Text("THE SHADOWLANDS",
                        style: Titulo, textAlign: TextAlign.center))),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Container(
                child: ZoomIn(
                    child: Text("NEW WORLD",
                        style: Subtitulo, textAlign: TextAlign.center))),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 20.0, left: 20.0, right: 20.0, bottom: 30.0),
            child: Container(
                child: FadeIn(
              child: Text(
                  "What lies beyond the world you know? The Shadowlands, resting place for every mortal soul—virtuous or vile—that has ever lived. Journey through planes of torment and imprisonment to those of rebirth and eternal reward.",
                  style: Texto,
                  textAlign: TextAlign.center),
            )),
          ),
          /*AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: Duration(milliseconds: 500),
        child: Image.asset(
          'assets/chains.png', height: 35, width: 400,
          fit: BoxFit.fill,
        ),
      ),*/
          Stack(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  image: DecorationImage(
                      image: AssetImage(photos[photoIndex]),
                      fit: BoxFit.cover)),
              height: 200.0,
              width: 320.0,
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              child: Text('PREVIOUS'),
              onPressed: _previousImage,
              elevation: 5.0,
              color: Colors.black.withOpacity(0.2),
              textColor: Colors.lightBlueAccent,
            ),
            SizedBox(width: 10.0),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              child: Text('NEXT'),
              onPressed: _nextImage,
              elevation: 5.0,
              color: Colors.black.withOpacity(0.2),
              textColor: Colors.lightBlueAccent,
            )
          ]),
          Container(
              child: Icon(Icons.keyboard_arrow_down,
                  size: 50.0, color: Colors.white)),
          Padding(
            padding: EdgeInsets.only(top: 1.0),
            child: Image.asset(
              'assets/Bar.png',
              height: 32,
              width: 400,
              fit: BoxFit.fill,
            ),
          ),

          /*
          SizedBox(height: 20.0 ),
          Text('Titulo', style: Titulo ),
          Text('Miércoles', style: Texto ),
          Expanded( child: Container() ),
          Icon( Icons.keyboard_arrow_down, size: 70.0, color: Colors.lightBlueAccent )*/
        ],
      ),
    );
  }

  /*Widget _pagina3(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('See More', style: TextStyle(fontSize: 20.0)),
          ),
          onPressed: ()=> Navigator.pushNamed(context, 'botones'),
        ),
      ),
    );
  }*/

  Widget _pagina3(BuildContext context) {
    return Stack(
      children: <Widget>[
        _imagenFondo3(),
        _textos3(),
      ],
    );
  }

  Widget _imagenFondo3() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll3.jpg'),
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _textos3() {
    final Titulo = TextStyle(
      color: Colors.white,
      fontSize: 35.0,
      fontWeight: FontWeight.bold,
      shadows: <Shadow>[
        Shadow(
          offset: Offset(0.0, 4.0),
          blurRadius: 7.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ],
    );

    final Subtitulo = TextStyle(
      color: Colors.white,
      fontSize: 17.0,
      fontWeight: FontWeight.bold,
      shadows: <Shadow>[
        Shadow(
          offset: Offset(0.0, 4.0),
          blurRadius: 7.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ],
    );

    final Texto = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      shadows: <Shadow>[
        Shadow(
          offset: Offset(0.0, 3.0),
          blurRadius: 5.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ],
    );

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30.0, left: 3.0, right: 3.0),
            child: Container(
              child: Text("DOMAINS FROM THE AFTERLIFE",
                  style: Titulo, textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Container(
              child: Text("A UNIQUE DESTINY TO CHOOSE",
                  style: Subtitulo, textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
            child: Container(
              child: Text(
                  "Align yourself with one of four Covenants—mysterious sects, each with their own ambition for the Shadowlands—to restore balance to the hereafter.",
                  style: Texto,
                  textAlign: TextAlign.center),
            ),
          ),
          Image.asset(
            'assets/Top.jpg',
            height: 10,
            width: 400,
            fit: BoxFit.fill,
          ),
          Image.asset(
            'assets/covenants_preview.jpg',
            height: 200,
            width: 400,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Image.asset(
              'assets/Bottom.jpg',
              height: 10,
              width: 400,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: 10.0),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0)),
            color: Colors.black.withOpacity(0.2),
            textColor: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text('LEARN MORE',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0.0, 1.0),
                        blurRadius: 9.0,
                        color: Colors.amber,
                      ),
                    ],
                  )),
            ),
            onPressed: () => Navigator.pushNamed(context, 'botones'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Image.asset(
              'assets/Bar.png',
              height: 32,
              width: 400,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }

/*Widget _textos3(BuildContext context) {

    final Titulo = TextStyle(color: Colors.orange, fontSize: 50.0);
    final Texto = TextStyle(color: Colors.white, fontSize: 20.0);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0 ),
          Text('Ancient domains from the afterlife', style: Titulo ),
          Text('Texto', style: Texto ),
          RaisedButton(
            shape: StadiumBorder(),
            color: Colors.blue,
            textColor: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: Text('See More', style: TextStyle(fontSize: 20.0)),
            ),
            onPressed: ()=> Navigator.pushNamed(context, 'botones'),
          ),
        ],
      ),
    );

  }*/

}
