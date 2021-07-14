import 'package:farmii_assist/locale/app_localization.dart';

import 'querey_screen.dart';
import "package:flutter/material.dart";

import 'Home.dart';
import 'querey_screen.dart';
import 'AboutUs.dart';
import 'Library.dart';



class flutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return    Drawer(

        child: new ListView(
          children: [
            new UserAccountsDrawerHeader(
              accountName: new Text(AppLocalization.of(context).title),
              accountEmail: new Text("farmiassist@gmail.com"),

              currentAccountPicture: new CircleAvatar(
                backgroundImage: AssetImage('images/icon.png'),
              ),
            ),
            new ListTile(
                title:new Text(AppLocalization.of(context).language),
                trailing: new Icon(Icons.language),
                onTap: ()=>{
                  Navigator.of(context).pop(),
                  Navigator.push(context,new MaterialPageRoute(builder: (context)=>Home()))
                }
            ),
            //new ListTile(
              //  title:new Text(AppLocalization.of(context).querey),
                //trailing: new Icon(Icons.question_answer_rounded),
                //onTap: ()=>{
                  //Navigator.of(context).pop(),
                  //Navigator.push(context,new MaterialPageRoute(builder: (context)=>querey()))
                //}
            //),
            new ListTile(
                title:new Text(AppLocalization.of(context).library),
                trailing: new Icon(Icons.local_library),
                onTap: ()=>{
                  Navigator.of(context).pop(),
                  Navigator.push(context,new MaterialPageRoute(builder: (context)=>Library()))
                }
            ),
            new ListTile(
                title:new Text(AppLocalization.of(context).use),
                trailing: new Icon(Icons.help),
                onTap: ()=>{
                  Navigator.of(context).pop(),
                  showAlertDialog(context)
                }
            ),
            new ListTile(
                title:new Text(AppLocalization.of(context).about),
                trailing: new Icon(Icons.info),
                onTap: ()=>{
                  Navigator.of(context).pop(),
                  Navigator.push(context,new MaterialPageRoute(builder: (context)=>aboutUs()))
                }
            ),
            Divider(),
            new ListTile(
              title:new Text(AppLocalization.of(context).close),
              trailing: new Icon(Icons.close),
              onTap: ()=>Navigator.of(context).pop(),
            ),

          ],
        )
    );

  }
}