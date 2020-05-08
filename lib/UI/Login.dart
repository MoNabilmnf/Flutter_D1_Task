import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/UI/Registeration.dart';
import 'constants.dart';
import 'Widgets.dart';
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
                CustomWidget().build_Login_or_Registration_Btn("LOGIN","Login Button Pressed"),

                Container(
                  alignment: Alignment.center,
                  child: CustomWidget().buildSignInWithText(),
                ),
                CustomWidget().buildSocialBtnRow(),
                Container(
                  padding: EdgeInsets.only(top: 42.0),
                  alignment: Alignment.center,
                  child : CustomWidget().buildSignupBtn(context,Registeration(),'Don\'t have an Account? ','Sign Up'),
                ),
              ],
            ),),
          )
        ],
      ),
    );
  }

}