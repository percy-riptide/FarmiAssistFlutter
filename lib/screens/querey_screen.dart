import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'Drawer.dart';
import 'package:flutter/services.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter_tts/flutter_tts.dart';
import 'Result.dart';
import '../locale/app_localization.dart';
class querey extends StatefulWidget{
  @override
  String lan ='';
  querey({this.lan});

  _Quereyy createState()=>_Quereyy(lan);

}

enum TtsState {playing, stopped}
class _Quereyy extends State<querey>{
  @override
  String lan='';
  _Quereyy(this.lan);
  FlutterTts flutterTts = FlutterTts();
  String text = "Please tell us your problem";
  TextEditingController Stext = TextEditingController();
  TtsState ttsState = TtsState.stopped;
  stt.SpeechToText _speech;
  bool _isListening = false;
  String _textSpeech ;
  var result;
  String value=" ";

  //double _confidence = 1.0;
  Future<void> onListen() async{
    if(lan =='kannada'){
      _speech.listen(
        localeId: 'kn-IN'
      );
    }
    if(!_isListening){
      bool available = await _speech.initialize(
          onStatus: (val) => print('onStatus: $val'),
          onError: (val) => print('onError: $val')
      );
      if(available){
        setState(() {
          _isListening = true;

        });
        _speech.listen(
            onResult: (val)=>setState(
                    (){
                  _textSpeech= val.recognizedWords;
                }
            )
        );
      }
    } else{
      setState(() {
        _isListening = false;
        _speech.stop();
        _textSpeech = '';


      });
    }
  }
  void initState(){
    super.initState();
    _speech = stt.SpeechToText();

  }

  Widget build(BuildContext context) {
    // TODO: implement build
    final TextEditingController quereyholder = TextEditingController(text: _textSpeech);
    clearInputText(){
      quereyholder.clear();
      // _textSpeech = '';
    }
    Future _stop() async{
      var result = await flutterTts.stop();
      if(result == 1)
        setState(() {
          ttsState =TtsState.stopped;
        });
    }

    Future _speak() async{
      await flutterTts.setVolume(0.5);
      await flutterTts.setPitch(0.5);
      await flutterTts.setSpeechRate(1);
      await flutterTts.speak(AppLocalization.of(context).pb);

    }


    return Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: flutterApp(),
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text(AppLocalization.of(context).title),),

        body: SingleChildScrollView(
            child:Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child:IconIamageAssest()
                ),
                Center(
                  child:  Text(AppLocalization.of(context).greeting, style: TextStyle(color:Colors.blue,fontSize: 30),
                  ),
                ),
                Center (

                    child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: TextField(
                          autofocus: true,
                          minLines: 1,
                          maxLines: 4,
                          controller: quereyholder,

                          onChanged: (text){
                            value = text;

                          },
                          style: TextStyle(color:Colors.white),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),

                            labelText: AppLocalization.of(context).enter,
                            hintText: AppLocalization.of(context).enter,

                          ),
                        )
                    )
                ),
                Center(
                    child: Column(
                        children:[ Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:[ Builder(
                              builder: (context)=>
                                  SizedBox(
                                    width:160.0,
                                    child:MaterialButton(

                                onPressed: ()=>{
                                Navigator.push(context,new MaterialPageRoute(builder: (context)=>result1(value:value,lan:lan))),
                                quereyholder.clear()
                              },
                                shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                child: Text(AppLocalization.of(context).submit, style: TextStyle(color: Colors.white),),
                                color: Colors.green,

                              ),)
                            ),
                              Builder(
                                builder: (context)=>
                                    SizedBox(
                                      width:160.0,
                                      child:MaterialButton(

                                  onPressed: clearInputText,
                                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                  child: Text(AppLocalization.of(context).erase, style: TextStyle(color: Colors.white),),
                                  color: Colors.red,

                                ),
                                    )),
                            ]
                        ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:[ Builder(
                                builder: (context)=>
                                    SizedBox(
                                      width: 160.0,
                                    child: MaterialButton(

                                  onPressed: (){
                                  showAlertDialog(context);
                                },
                                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                  child: Text(AppLocalization.of(context).help, style: TextStyle(color: Colors.white),),
                                  color: Colors.orange,

                                ),
                              )),
                                Builder(
                                  builder: (context)=>
                                      SizedBox(
                                        width:160.0,
                                      child:MaterialButton(
                                    onPressed: ()=>{
                                    if(Platform.isAndroid){
                                      SystemNavigator.pop()
                                    }
                                  },
                                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                    child: Text(AppLocalization.of(context).exit, style: TextStyle(color: Colors.white),),
                                    color: Colors.grey,

                                  ),
                                ),)
                              ]
                          ),
                        ]
                    )
                ),
                Center(
                    child: Padding(
                        padding: EdgeInsets.only(left:10.0,top:30.0,bottom:10.0,right:10.0),
                        child: IconButton(
                          onPressed: (){
                            _speak();
                          },
                          icon: Icon(
                              Icons.volume_up_sharp,
                              color: Colors.white
                          ),
                          iconSize: 40,
                        )
                    )
                ),
              ],

            )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: AvatarGlow(
            animate: _isListening,
            glowColor: Theme.of(context).primaryColor,
            endRadius: 75.0,
            duration: const Duration(milliseconds: 2000),
            repeatPauseDuration: const Duration(milliseconds: 100),
            repeat: true,
            child: FloatingActionButton(
                onPressed: ()=>{
                  onListen()},
                child: Icon(Icons.mic)
            )
        )
    );

  }

}


class IconIamageAssest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/icon.png');
    Image image = Image(image: assetImage);
    return Container(
      padding: new EdgeInsets.all(50.0),
      width: 200.0,
      height: 200.0,
      child: image,
    );
  }

}
enum ConfirmAction{Cancel,Accept}
showAlertDialog(BuildContext context){
  return showDialog<ConfirmAction>(
      context:context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0))
          ),
          backgroundColor: Colors.grey,
          title: (Text(AppLocalization.of(context).help,style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold))),

          content: Text(AppLocalization.of(context).helpdata, style: TextStyle(color: Colors.white),),
          actions: [
            FlatButton(onPressed: (){
              Navigator.of(context).pop(ConfirmAction.Cancel);
            },
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0))
                ),
                child: Text(AppLocalization.of(context).close,style: TextStyle(fontSize: 20, color: Colors.white))
            )
          ],
        );

      }
  );
}
