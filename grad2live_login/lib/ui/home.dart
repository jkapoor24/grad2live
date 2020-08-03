import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:grad2live_login/ui/forgot_screen.dart';
import 'package:grad2live_login/ui/signup_screen.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In"),
        backgroundColor: Colors.grey.shade900,
      ),
      backgroundColor: Colors.white10,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 60.0,
                    child: Hero(
                      tag: 'logo',
                      child: Image(
                        image: AssetImage(
                          "images/img.png",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Grad2Live",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: 5.0,
                            fontWeight: FontWeight.w500,
                            fontSize: 35.0,
                            color: Colors.white,
                            fontFamily: "Bebas Neue"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                cursorColor: Colors.white,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.perm_identity,
                    color: Colors.white,
                  ),
                  hintText: "Email or Phone number",
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0))),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                cursorColor: Colors.white,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Colors.white,
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0))),
                ),
              ),
            ),
//            Padding(
//              padding: const EdgeInsets.all(25.0),
//              child: FlatButton(
//                onPressed: () {
//                  debugPrint("Button Pressed");
//                },
//                textColor: Colors.white,
//                color: Colors.green.shade900,
////                shape: RoundedRectangleBorder(
////                  borderRadius: BorderRadius.circular(10.0),
////                ),
//                child: Text(
//                  "Login",
//                  textAlign: TextAlign.center,
//                  style: TextStyle(
//                    fontSize: 25.0,
//                    fontWeight: FontWeight.w600,
//                    color: Colors.white,
////                  backgroundColor: Colors.green,
//                  ),
//                ),
//              ),
//            ),
            Container(
              alignment: Alignment.bottomRight,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ForgotScreen.id);
                  },
                  child: Text(
                    "Forgot Password?",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                color: Colors.deepOrange,
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: FlatButton(
                  onPressed: () {
                    debugPrint("Logged In");
                  },
                  textColor: Colors.white,
//                  color: Colors.green.shade900,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
//                  backgroundColor: Colors.green,
                    ),
                  ),
                ),
              ),
            ),

//            SizedBox(height: 10.0),

//            Container(
//              margin: const EdgeInsets.symmetric(horizontal: 60.0),
//              child: Divider(
//                color: Colors.grey,
//                height: 20,
//              ),
//            ),

//            SizedBox(
//              height: 20.0,
//            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 40.0, right: 20.0),
                      child: Divider(
                        color: Colors.grey,
                        height: 36,
                      )),
                ),
                Text("Sign In with"),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 40.0),
                      child: Divider(
                        color: Colors.grey,
                        height: 36,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SignInButton(
                  Buttons.Google,
                  padding: EdgeInsets.all(5.0),
                  text: "Sign in with Google",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SignInButton(
                      Buttons.Facebook,
                      padding: EdgeInsets.all(5.0),
                      mini: true,
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    SignInButton(
                      Buttons.LinkedIn,
                      padding: EdgeInsets.all(5.0),
                      mini: true,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignupScreen.id);
                  },
                  child: Text(
                    "Sign up",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//import 'package:flutter/material.dart';
//
//class HomePage extends StatefulWidget {
//  @override
//  _HomePageState createState() => _HomePageState();
//}
//
//class _HomePageState extends State<HomePage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Center(
//          child: Text(
//            "Grad2live",
//          ),
//        ),
//        backgroundColor: Colors.blueGrey[900],
//      ),
//      backgroundColor: Colors.white12,
//      body: SafeArea(
//        child: Expanded(
//          child: Container(
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Expanded(
//                  child: Container(
//                    height: 200,
//                    width: 200,
//                    decoration: BoxDecoration(
//                        shape: BoxShape.rectangle,
//                        image: DecorationImage(
//                            alignment: Alignment.topCenter,
//                            image: AssetImage("images/logo.jpg"),
//                            fit: BoxFit.contain)),
//                  ),
//                ),
////              SizedBox(
////                height: 40.0,
////              ),
////              Expanded(
////                child: Text(
////                  "LOGIN",
////                  style: TextStyle(
////                      color: Colors.white,
////                      fontSize: 30.0,
////                      fontWeight: FontWeight.bold,
////                      fontFamily: "Pacifico"),
////                ),
////              ),
////              SizedBox(
////                height: 40.0,
////              ),
//                Column(
//                  children: <Widget>[
//                    Padding(
//                      padding: const EdgeInsets.all(8.0),
//                      child: TextField(
//                        keyboardType: TextInputType.emailAddress,
//                        style: TextStyle(color: Colors.white),
//                        decoration: InputDecoration(
//                            prefixIcon: Icon(Icons.email),
//                            hintText: "Email",
//                            border: OutlineInputBorder(
//                                borderSide: BorderSide(color: Colors.white),
//                                borderRadius: BorderRadius.circular(30))),
//                      ),
//                    ),
//                  ],
//                ),
//                Column(
//                  children: <Widget>[
//                    Padding(
//                      padding: const EdgeInsets.all(8.0),
//                      child: TextField(
//                        obscureText: true,
//                        keyboardType: TextInputType.visiblePassword,
//                        style: TextStyle(color: Colors.white),
//                        decoration: InputDecoration(
//                          prefixIcon: Icon(Icons.keyboard),
//                          hintText: "Password",
//                          border: OutlineInputBorder(
//                              borderSide: BorderSide(color: Colors.white),
//                              borderRadius: BorderRadius.circular(30)),
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
////            SizedBox(
////              height: 40.0,
////            ),
//                Column(
//                  children: <Widget>[
//                    RaisedButton(
//                      onPressed: () => debugPrint("Logged In!"),
//                      color: Colors.blueGrey.shade900,
//                      shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(20)),
//                      child: Text(
//                        "Log In",
//                        style: TextStyle(
//                            fontWeight: FontWeight.w500,
//                            color: Colors.white,
//                            fontSize: 20),
//                      ),
//                    )
//                  ],
//                ),
//                Column(
//                  children: <Widget>[
//                    RaisedButton(
//                      onPressed: () => debugPrint("Account created!"),
//                      color: Colors.blueGrey.shade900,
//                      shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(20)),
//                      child: Text(
//                        "Create An Account",
//                        style: TextStyle(
//                            fontWeight: FontWeight.w500,
//                            color: Colors.white,
//                            fontSize: 20),
//                      ),
//                    )
//                  ],
//                )
//              ],
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
