import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_layout_00/watermark.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sample',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Samples Guadalajara'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initUI();

  }

  void initUI() async{
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Expanded(
                child: Text(
                  'La arquitectura de Flutter',
                style: GoogleFonts.poppins(fontSize: 25),),
              ),
              Spacer(),
              Expanded(
                flex: 7,
                child: Column(
                  children: <Widget>[
                    Flexible(
                      flex: 90,
                      child: Container(
                        color: Colors.lightGreen,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'Framework \n(Dart)',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Expanded(
                                flex: 7,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 20,
                                      child: Container(
                                        color: Colors.green,
                                        child: Center(
                                          child: Text(
                                            'Theming',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(flex: 5,),
                                    Expanded(
                                      flex: 20,
                                      child: Container(
                                        color: Colors.green,
                                        child: Center(
                                          child: Text(
                                            'Widgets',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(flex: 5,),
                                    Expanded(
                                      flex: 20,
                                      child: Container(
                                        color: Colors.green,
                                        child: Center(
                                          child: Text(
                                            'Rendering',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(flex: 5,),
                                    Expanded(
                                      flex: 20,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 30,
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  'Animation',
                                                  style: TextStyle(color: Colors.white),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              color: Colors.green,
                                            ),
                                          ),
                                          Spacer(
                                            flex: 3,
                                          ),
                                          Expanded(
                                            flex: 30,
                                            child: Container(
                                                color: Colors.green,
                                                child: Center(
                                                  child: Text("Painting",
                                                      style: TextStyle(color: Colors.white),
                                                      textAlign: TextAlign.center),
                                                )),
                                          ),
                                          Spacer(
                                            flex: 3,
                                          ),
                                          Expanded(
                                            flex: 30,
                                            child: Container(
                                                color: Colors.green,
                                                child: Center(
                                                  child: Text('Gestures',
                                                      style: TextStyle(color: Colors.white),
                                                      textAlign: TextAlign.center),
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                    Spacer(flex: 5,),
                                    Expanded(
                                      flex: 20,
                                      child: Container(
                                        color: Colors.green,
                                        child: Center(
                                          child: Text(
                                            'Foundation',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacer(flex: 5,),
                    Flexible(
                      flex: 90,
                      child: Container(
                        color: Colors.lightBlueAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(flex: 3, child: Text('Engine (C++)')),
                              Expanded(
                                flex: 7,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 30,
                                      child: Container(
                                        child: Text(
                                          'Skia',
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Spacer(
                                      flex: 3,
                                    ),
                                    Expanded(
                                      flex: 30,
                                      child: Container(
                                          color: Colors.blue,
                                          child: Text("Dart VM",
                                              style: TextStyle(color: Colors.white),
                                              textAlign: TextAlign.center)),
                                    ),
                                    Spacer(
                                      flex: 3,
                                    ),
                                    Expanded(
                                      flex: 30,
                                      child: Container(
                                          color: Colors.blue,
                                          child: Text('Text',
                                              style: TextStyle(color: Colors.white),
                                              textAlign: TextAlign.center)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Expanded(child: bottomWatermark()),
            ],
          ),
        ),
      ),
    );
  }
}
