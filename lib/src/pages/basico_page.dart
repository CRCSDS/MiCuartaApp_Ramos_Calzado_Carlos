import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

//TODO: Pagina principal

/*class BasicoPage extends StatelessWidget {*/

class BasicoPage extends StatefulWidget {
  /*final estiloTitulo    = TextStyle( fontSize: 30.0, fontWeight: FontWeight.bold );
  final estiloSubTitulo = TextStyle( fontSize: 15.0, color: Colors.grey );*/

  @override
  _BasicoPageState createState() => _BasicoPageState();
}

class _BasicoPageState extends State<BasicoPage> {
  //TODO: VIDEOPLAYER

  VideoPlayerController _Controller;
  String Titulo = "World of Warcraft: Shadowlands";
  String Subtitulo =
      "'Beyond the veil lies darkness. Were every soul has it's place.'";

  @override
  void initState() {
    super.initState();
    _Controller = VideoPlayerController.asset('assets/videoplaybackv1.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
    _Controller.play();
    _Controller.setLooping(true);
    _Controller.setVolume(0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shadowlands',
      home: Scaffold(
          body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: 50,
                height: 35,
                child: VideoPlayer(_Controller),
              ),
            ),
          ),

          /*
            Container(
              child: _Controller.value.initialized
                  ? AspectRatio(
                aspectRatio: 3/2,
                  child: VideoPlayer(_Controller),
              )
                  :Container(),
            ), */

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 16.0, bottom: 20.0),
                child: Image(
                  image: AssetImage('assets/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 16.0, bottom: 30.0),
                child: Container(
                  child: Text(
                    Subtitulo,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0.0, 4.0),
                          blurRadius: 7.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                child: Text(
                  "ENTER",
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0.0, 2.0),
                        blurRadius: 9.0,
                        color: Colors.lightBlueAccent,
                      ),
                    ],
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, 'scroll'),
                color: Colors.black.withOpacity(0.3),
                textColor: Colors.lightBlueAccent,
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                splashColor: Colors.black,
              ),
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Image.asset(
                'assets/background2.png',
                height: 90,
                width: 380,
                fit: BoxFit.fitWidth,
              ),
            ),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Image.asset(
                'assets/background.png',
                height: 85,
                width: 380,
                fit: BoxFit.fitWidth,
              ),
            ),
          ])
        ],
      )),
    );
  }
}

//

/*


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          /*  _crearImagen(context),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(), */
          ],
        ),
      )
    );
  }

  /*Widget build(BuildContext context) {
          return Column(
            children: <Widget>[
              _crearImagen(context),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            ],
          );
  }*/



  Widget _crearImagen(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: ()=> Navigator.pushNamed(context, 'scroll'),
        child: Image(
          image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          height: 300.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _crearTitulo() {
    
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                /*crossAxisAlignment: CrossAxisAlignment.start,*/
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Lago con un puente', style: estiloTitulo ),
                  SizedBox( height: 5.0 ),
                  Text('Un lago en Alemania', style: estiloSubTitulo ),
                ],
              ),
            ),

        /*    Icon( Icons.star, color: Colors.red, size: 30.0 ),
            Text('40', style: TextStyle( fontSize: 20.0 ) )*/

          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        _accion( Icons.call, 'CALL' ),
        _accion( Icons.near_me, 'ROUTE' ),
        _accion( Icons.share, 'Share'),

      ],
    );

  }

  Widget _accion(IconData icon, String texto ) {

    return Column(
      children: <Widget>[
        Icon( icon, color: Colors.blue, size: 40.0 ),
        SizedBox( height: 5.0 ),
        Text( texto, style: TextStyle( fontSize: 15.0, color: Colors.blue ), )
      ],
    );

  }

  Widget _crearTexto() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 30.0 ),
        child: Text(
          'Sit minim aliqua minim laborum duis occaecat consectetur aliquip id ad deserunt. Adipisicing qui reprehenderit eu eu qui occaecat exercitation et aliqua laboris dolor.',
          textAlign: TextAlign.justify,
        ),
      ),
    );

  }

*/
