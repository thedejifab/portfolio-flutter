import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Avenir',
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff323444),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 100),
                            Text(
                              'Ayodeji\nFabusuyi.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            SizedBox(
                              width: 40,
                              child: Divider(
                                height: 2,
                                color: Color(0xFFf8d053),
                                thickness: 5,
                              ),
                            ),
                            SizedBox(height: 100),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 28,
                                  width: 28,
                                  child: Image.asset(
                                    'assets/images/linkedin.png',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                  height: 28,
                                  width: 28,
                                  child: Image.asset(
                                    'assets/images/twitter.png',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(
                                    'assets/images/github.png',
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Services',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Works',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Blog',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(height: 100),
                          Text(
                            ' - Introduction',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 50),
                          Text(
                            'Software Engineer and CS Student, based in Akure, Nigeria.',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Fabusuyi is a Software Engineer at 390labs where he works with the mobile development team.',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 30),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'My Story',
                                    style: TextStyle(
                                      color: Color(0xFFf8d053),
                                    ),
                                  ),
                                  Divider(
                                    height: 2,
                                    color: Color(0xFFf8d053),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 20,
                                    color: Color(0xFFf8d053),
                                  ),
                                  Divider(
                                    height: 2,
                                    color: Color(0xFFf8d053),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              Container(
                height: 400,
                color: Color(0xFF252734),
              )
            ],
          ),
        ),
      ),
    );
  }
}
