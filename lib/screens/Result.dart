import 'dart:convert';
import 'package:translator/translator.dart';
import 'package:dio/dio.dart';
import 'package:farmii_assist/locale/app_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Drawer.dart';
import 'dart:core';
import 'package:http/http.dart' as http;

import 'UserModel.dart';
class result1 extends StatefulWidget {
  @override
  String value= "";
  String lan ='';
  result1({this.value,this.lan});
  _resultState createState() => _resultState(value,lan);
}

class _resultState extends State<result1> {
  @override
  String value="";
  String lan='';
  _resultState(this.value,this.lan);
  String jsonr;
  void initState() {
    super.initState();
    //Future.delayed(Duration.zero,()async{
      //jsonr = await getJson(value);
      //print(jsonr);
    //  print(jsonr.runtimeType);
    //});

  }
  var response;
  Future<String> getJson(querey) async{
    try {
      var la = lan;
      print(la);
      var dio = Dio();
      dio.options.headers['charset']='utf8';
      response = await dio.post('https://farmiassist.herokuapp.com/',
          data: json.encode({'lang': la, 'data': querey}));
      final translator = GoogleTranslator();
      if(la == 'kannada'){
        var t = await translator.translate(response.data,to:'kn');
        print(t);
        return t.toString();
      }
      if(la == 'hindi'){
        var t = await translator.translate(response.data,to:'hi');
        print(t);
        return t.toString();
      }
      //  print(UserModel.fromJson(json.decode(response.data.toString())));
      //print(UserModel.fromJson(json.decode(response.data)));
      print(response.data);
      return ((response.data));
      //return UserModel.fromJson(json.decode(response.data));}
    }
    catch(e,stacktrace){
      print(e);
    }
    //print(UserModel.fromJson(response.data));

  }

  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(

      resizeToAvoidBottomInset: false,
      drawer: flutterApp(),
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text(AppLocalization.of(context).result),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(
              image: AssetImage('images/icon.png'),
              height: 150,
              width: 150,

            ),
            SizedBox(
              height: 60,
            ),
            //Text(jsonr.toString(),style: TextStyle(color: Colors.white),)
              Expanded(
                  child: FutureBuilder<String>(
                    future: getJson(value),
                    builder: (context,AsyncSnapshot<String> snapshot){

                      if(snapshot.hasData){
                        return

                            Text((snapshot.data), style: TextStyle(color: Colors.white,fontSize: 20),);
                      }
                      else{
                        return new CircularProgressIndicator();
                      }
                    },
                  )
              )

          ],
        ),
      ),

    );
  }}
