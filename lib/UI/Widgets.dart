
import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
class CustomWidget{

  Widget buildSignInWithText(){
    return Column(
      children: <Widget>[
        Text(
          '- OR -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Sign in with',
          style: kLabelStyle,
        ),
      ],
    );
  }
 Widget buildSocialBtn(Function onTap, AssetImage logo) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 45.0,
      width: 45.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 6.0,
          ),
        ],
        image: DecorationImage(
          image: logo,
        ),
      ),
    ),
  );
}
 Widget buildSocialBtnRow() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 18.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildSocialBtn(
              () => print('Login with Facebook'),
          AssetImage(
            'img/facebook.png',
          ),
        ),
        buildSocialBtn(
              () => print('Login with Google'),
          AssetImage(
            'img/google.png',
          ),
        ),
      ],
    ),
  );
}
Widget buildSignupBtn(context,C,String text1 ,String text2) {
  return GestureDetector(
    onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => C)),
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$text1',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
          ),

          TextSpan(
            text: '$text2',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}


}