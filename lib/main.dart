import 'package:coucou/inscription.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'igs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _() {
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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        child: Form(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      padding: EdgeInsets.only(
                          left: 0, right: 0, top: 0, bottom: 10),
                      child: Text(
                        'welcome back',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 135, right: 0, top: 0, bottom: 0),
                      child: Image.asset(
                        'kk.jpg',
                        width: 100,
                        height: 50,
                      ),
                    )
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 30,
              // ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'mot de passe',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              FloatingActionButton(
                onPressed: () {},
                focusColor: Color.fromARGB(255, 41, 4, 110),
                child: const Text('connexion'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    checkColor: Colors.blue,
                    value: true,
                    onChanged: (value) {},
                    side: const BorderSide(width: 1.0),
                    activeColor: null,
                  ),
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 8),
                      child: Text('rember mer')),
                  SizedBox(
                    width: 150,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 8),
                      child: InkWell(
                          onTap: () {},
                          child: Text('pays flutter',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold)))),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 40.0, right: 5.0),
                      child: const Divider(
                        color: Colors.black,
                        height: 16,
                      )),
                ),
                const Text("login with"),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 5.0, right: 40.0),
                      child: const Divider(
                        color: Colors.black,
                        height: 16,
                      )),
                ),
              ]),
              const SizedBox(
                width: 50,
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.g_mobiledata_outlined,
                    size: 30,
                    color: Color.fromARGB(255, 190, 35, 24),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Icon(
                    Icons.facebook_rounded,
                    color: Color.fromARGB(255, 20, 92, 151),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Icon(
                    Icons.apple,
                    color: Colors.black,
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Icon(
                    Icons.telegram_rounded,
                    color: Color.fromARGB(255, 98, 165, 219),
                  ),
                ],
              ),
              const SizedBox(
                width: 50,
                height: 50,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('dont have an account?'),
                    Container(
                        margin: const EdgeInsets.only(top: 0),
                        child: InkWell(
                            onTap: () {
                              var route = MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const MyWidget());
                              Navigator.of(context).push(route);
                            },
                            child: const Text('Sign up',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold)))),
                  ],
                ),
              )
            ])),
      ),
    );
  }
}
