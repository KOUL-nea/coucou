import 'dart:html';

import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
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

              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'email',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(
                height: 40.0,
              ),

              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'email',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(
                height: 40.0,
              ),

              FloatingActionButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            title: Text('bienvenue !!'),
                            content: Text('hhhh'),
                            backgroundColor: Color.fromARGB(255, 6, 66, 114),
                            elevation: 24.0,
                            actions: [
                              ElevatedButton(
                                  onPressed: () {
                                    // Navigator.pop(
                                    //   context,
                                    // );
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyWidget()));
                                  },
                                  child: Text("oui")),
                              ElevatedButton(
                                  onPressed: () {
                                    const snackBar = SnackBar(
                                      content: Text('bonne journeé!'),
                                    );

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                  child: Text("non")),
                            ],
                          ));
                },
                focusColor: Color.fromARGB(255, 41, 4, 110),
                child: const Text('se connecter'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              const SizedBox(height: 10),

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
                            onTap: () {},
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
