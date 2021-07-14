import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Drawer.dart';
class Library extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Farmi Assist',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            drawer: flutterApp(),
            backgroundColor: Colors.black,
            appBar: AppBar(title: Text("Farmi Assist"),),
            body: Center(
                child: Text('WILL BE UPDATED SOON AL',
                    style: TextStyle(color:Colors.white,fontSize: 30))
            )
        )
    );
  }
}
