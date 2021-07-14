import 'package:flutter_tts/flutter_tts.dart';
import './querey_screen.dart';
import "package:flutter/material.dart";
import '../locale/app_localization.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();


}
enum TtsState {playing, stopped}
class _HomeState extends State<Home> {


  FlutterTts flutterTts;
  String text = "Please choose the language of your interest either English, Kannada or hindi. ದಯವಿಟ್ಟು ನಿಮ್ಮ. ಆಸಕ್ತಿಯ. ಭಾಷೆಯನ್ನು ಇಂಗ್ಲಿಷ್, ಕನ್ನಡ. ಅಥವಾ. ಹಿಂದಿ. ಆಯ್ಕೆಮಾಡಿ. कृपया अपनी रुचि की भाषा चुनें या तो अंग्रेजी, कन्नड़ या हिंदी.";
  TtsState ttsState = TtsState.stopped;

  var result;
  get isPlaying => TtsState.playing;
  get isStopped => TtsState.stopped;
  initState(){
    super.initState();
    initTts();
  }
  initTts(){
    flutterTts = FlutterTts();
    flutterTts.setStartHandler(() {
      setState(() {
        ttsState = TtsState.playing;
      });
    });
    flutterTts.setCompletionHandler(() {
      setState(() {
        ttsState = TtsState.stopped;
      });
    });
    flutterTts.setCancelHandler(() {
      setState(() {
        ttsState = TtsState.stopped;
      });
    });
    flutterTts.setErrorHandler((message) {
      setState(() {
        print("error: $message");
      });
    });

  }


  Widget build(BuildContext context) {
    Future _stop() async{
      var result = await flutterTts.stop();
      if(result == 1)
        setState(() {
          ttsState =TtsState.stopped;
        });
    }

    Future _speak() async{
      var result = await flutterTts.speak(text);
      if(result == 1)
        setState(() {
          ttsState = TtsState.playing;
        });
    }
    flutterTts.setLanguage('en-IN');
    String la ;

    return Scaffold(


        backgroundColor: Colors.black,
        appBar: AppBar(title: Text("Language/ಭಾಷಾ/भाषा"),),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Builder(
                  builder: (context)=> RaisedButton(onPressed: ()=>
                  {
                    la = 'english',
                    AppLocalization.load(Locale('en','US')),
                    _stop,
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => querey(lan:"english")))
                  },

                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      color: Colors.blue,
                      child: Text(
                          "English", style: TextStyle(color: Colors.white))
                  ),
                ),
                Builder(

                  builder: (context)=>RaisedButton(onPressed: ()=> {

                    AppLocalization.load(Locale('kn','IN')),
                    print(Localizations.localeOf(context)),
                    _stop,
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => querey(lan:"kannada"))),

                  },
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      color: Colors.blue,
                      child: Text(
                          "ಕನ್ನಡ", style: TextStyle(color: Colors.white))
                  ),
                ),
                Builder(
                  builder: (context)=> FlatButton(onPressed: () =>{
                    la='hindi',
                    AppLocalization.load(Locale('hi','IN')),
                    _stop,
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => querey(lan:"hindi")))
                  },
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      color: Colors.blue,
                      child: Text(
                          "हिंदी", style: TextStyle(color: Colors.white))
                  ),
                ),
                IconButton(
                  onPressed: _speak,

                  icon: Icon(
                      Icons.volume_up_sharp,
                      color: Colors.white
                  ),
                  iconSize: 40,
                ),
                // RaisedButton(onPressed: translator)
              ],
            )
        )
    );

  }
}