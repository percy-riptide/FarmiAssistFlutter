import 'package:farmii_assist/locale/app_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Drawer.dart';
class aboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text(AppLocalization.of(context).about),),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 60,
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/icon.png'),
              ),
              Text(AppLocalization.of(context).title,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(AppLocalization.of(context).moto,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 60,
              ),

              RaisedButton(onPressed: () {},
                child: Text(AppLocalization.of(context).git,
                  style: TextStyle(fontSize: 15.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                color: Colors.amber,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

              ),
              SizedBox(
                height: 60,
              ),
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage('images/shreya.jpg'),
              ),
              Text(AppLocalization.of(context).shreya,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(AppLocalization.of(context).sd,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 60,
              ),
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage('images/pratik.jpg'),
              ),
              Text(AppLocalization.of(context).pratik,
                style: TextStyle(
                  color: Colors.white,
                  fontSize:25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(AppLocalization.of(context).sd,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage('images/jyoti.jpg'),
              ),
              Text(AppLocalization.of(context).jyoti,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(AppLocalization.of(context).sd,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),

            ],
          ),
        ),
      ),

    );


  }
}

