import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }

}

class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("paymac WebView"),
      ),
      body:WillPopScope(
        onWillPop: _onBackPress,
        child:WebView(
          //key: UniqueKey(),
          initialUrl: "https://www.paymac.net/",
          javascriptMode: JavascriptMode.unrestricted,
        ) ,
      )
    );
  }

  Future<bool> _onBackPress() {
    return showDialog(context: context
    , builder: (BuildContext context){
      return AlertDialog(
        title: Text("Are you Sure ?"),
        content: Text('You are going to exit the application!!!'),
        actions: <Widget>[
          FlatButton(
            child: Text('NO'),
            onPressed: (){
              Navigator.of(context).pop(false);
            },
          ),
          FlatButton(
            child: Text('YES'),
            onPressed: (){
              Navigator.of(context).pop(true);
            },
          ),
        ],
      );
        });
  }
}