import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/UI/Home.dart';
import 'package:task2/UI/Registeration.dart';
import 'constants.dart';
import 'dart:io';
import 'Widgets.dart';
import 'package:connectivity/connectivity.dart';
class Login extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }

}
class LoginState extends State<Login>{
  bool CheckboxValue = false;
  void onChangeCheckboxValue(bool v){
    setState(() {
      CheckboxValue = v;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(22.0),
            color: Colors.blue,
            child: SingleChildScrollView(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child:Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,fontSize: 30.0,fontWeight:FontWeight.bold
                    ),
                  ),
                  padding: EdgeInsets.all(28.0),
                ),

                Text(
                  'Email',
                  style: kLabelStyle,
                ),
                SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: 50.0,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      hintText: 'Enter your Email',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 14.0),
                ),


                Text(
                  'Password',
                  style: kLabelStyle,
                ),
                SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: 50.0,
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      hintText: 'Enter your Password',
                      hintStyle: kHintTextStyle,
                    ),
                  ),

                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: kLabelStyle,
                  ),
                ),
                Container(
                  child:Row(
                    children: <Widget>[
                      Theme(
                          data: ThemeData(unselectedWidgetColor: Colors.white),
                          child: new Checkbox(value: CheckboxValue, onChanged: onChangeCheckboxValue,activeColor: Colors.white,checkColor: Colors.blue)),
                      //new Checkbox(value: CheckboxValue, onChanged: onChangeCheckboxValue,activeColor: Colors.white,checkColor: Colors.blue,hoverColor: ,),
                      Text("Remember me",style:kLabelStyle),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 5.0,
                    onPressed:_CheckInternetConnection,
                    padding: EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.white,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xFF527DAA),
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                  ),
                ),


                Container(
                  alignment: Alignment.center,
                  child: CustomWidget().buildSignInWithText(),
                ),
                CustomWidget().buildSocialBtnRow(),
                Container(
                  padding: EdgeInsets.only(top: 42.0),
                  alignment: Alignment.center,
                  child : new GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/Registeration');
                    },
                    child: RichText(
                  text: TextSpan(
                  children: [
                  TextSpan(
                    text: 'Don\'t have an Account? ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ],
                ),
            ),
                  ),
                  
                ),
              ],
            ),),
          )
        ],
      ),
    );
  }
  _CheckInternetConnection() async{
    print("Check 1");
    try {
      final result = await InternetAddress.lookup('paymac.net');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected');
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Home()));
      }
    } on SocketException catch (_) {
      print('not connected');
      _showDialoge();
    }
  }
  _showDialoge(){
    showDialog(context: context,
        builder: (context){
          return AlertDialog(
            title: Text("Internet Connection"),
            content: Text("please check your internet connection"),
            actions: <Widget>[
              FlatButton(
                child: Text("Try Again"),
                onPressed: (){
                  Navigator.of(context).pop();
                  _CheckInternetConnection();
                },
              )
            ],
          );
        }
    );
  }
}