import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';
import 'Widgets.dart';
import 'constants.dart';

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

                CustomWidget().build_Login_or_Registration_Btn("REGISTER","Registration Button Pressed"),

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

}