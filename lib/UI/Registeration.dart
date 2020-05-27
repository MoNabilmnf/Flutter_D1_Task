import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:task2/UI/Home.dart';
import 'Login.dart';
import 'Widgets.dart';
import 'constants.dart';
import 'dart:io';
class Registeration extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterationState();
  }


}
class RegisterationState extends State<Registeration>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text("Registration page"),
      ),
      backgroundColor: Colors.blue,
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 22.0,right: 22.0,top: 12.0),
            color: Colors.blue,
            child: SingleChildScrollView(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child:Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white,fontSize: 30.0,fontWeight:FontWeight.bold
                    ),
                  ),
                  padding: EdgeInsets.all(20.0),
                ),
                Text(
                  'Full Name',
                  style: kLabelStyle,
                ),
                SizedBox(height: 7.0),
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
                        Icons.person,
                        color: Colors.white,
                      ),
                      hintText: 'Enter your Name',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 14.0),
                ),
                Text(
                  'Phone No',
                  style: kLabelStyle,
                ),
                SizedBox(height: 7.0),
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
                        Icons.phone_iphone,
                        color: Colors.white,
                      ),
                      hintText: 'Enter your Phone no',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 14.0),
                ),
                Text(
                  'Email',
                  style: kLabelStyle,
                ),
                SizedBox(height: 7.0),
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
                SizedBox(height: 7.0),
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
                  margin: EdgeInsets.only(bottom: 14.0),
                ),

                Text(
                  'Confirm Password',
                  style: kLabelStyle,
                ),
                SizedBox(height: 7.0),
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
                      hintText: 'Enter your Confirm Password',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 18.0),
                ),

                //CustomWidget().build_Login_or_Registration_Btn("REGISTER",context),
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
          'REGISTER',
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
                  padding: EdgeInsets.only(top: 18.0,bottom: 7.0),
                  alignment: Alignment.center,
                  child : CustomWidget().buildSignupBtn(context,Login(),'have an Account? ','Sign In'),
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