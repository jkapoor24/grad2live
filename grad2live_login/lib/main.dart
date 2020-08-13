import 'package:flutter/material.dart';
import 'package:grad2live_login/ui/calllogs_screen.dart';
import 'package:grad2live_login/ui/signup_screen.dart';
import 'package:grad2live_login/ui/video_screen.dart';
import 'ui/edupreneur_screen.dart';
import 'ui/experience_screen.dart';
import 'ui/home.dart';
import 'ui/forgot_screen.dart';

void main() {
  runApp(
    new MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        ForgotScreen.id: (context) => ForgotScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        EdupreneurScreen.id: (context) => EdupreneurScreen(),
        ExperienceScreen.id: (context) => ExperienceScreen(),
        CalllogsScreen.id: (context) => CalllogsScreen(),
        demoVideo.id: (context) => demoVideo()
      },
    ),
  );
}

//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//void main() {
//  runApp(MaterialApp(
//    home: Scaffold(
//      appBar: AppBar(
//        title: Text("Grad2Live"),
//        backgroundColor: Colors.teal[900],
//      ),
//      backgroundColor: Colors.teal,
//      body: Home(),
//    ),
//  ));
//}
//
//class Home extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return SafeArea(
//        child: Column(
//      mainAxisAlignment: MainAxisAlignment.center,
//      children: <Widget>[
//        CircleAvatar(
//          backgroundColor: Colors.teal,
//          radius: 60.0,
//          child: Image.asset("images/logo.jpg", fit: BoxFit.fill),
//        ),
//        SizedBox(
//          height: 10.0,
//        ),
//        Text(
//          "LOGIN",
//          style: TextStyle(
//              fontSize: 30.0,
//              fontWeight: FontWeight.bold,
//              color: Colors.blueGrey[900],
//              fontFamily: "Pacifico"),
//        ),
//        Padding(
//          padding: const EdgeInsets.all(30.0),
//          child: TextField(
//            keyboardType: TextInputType.emailAddress,
//            style: TextStyle(
//              color: Colors.white,
//            ),
//            decoration: InputDecoration(
//              prefixIcon: Icon(Icons.email),
//              hintText: "Email",
//              border:
//                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//            ),
//          ),
//        ),
//        Padding(
//          padding: const EdgeInsets.all(30.0),
//          child: TextField(
//            obscureText: true,
//            keyboardType: TextInputType.visiblePassword,
//            style: TextStyle(color: Colors.white),
//            decoration: InputDecoration(
//                prefixIcon: Icon(Icons.keyboard),
//                hintText: "Password",
//                border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(20))),
//          ),
//        ),
//        Column(
//          children: <Widget>[
//            RaisedButton(
//              onPressed: () => debugPrint("Logged In!"),
//              color: Colors.blueGrey[900],
//              shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(20)),
//              child: Text(
//                "Log In",
//                style: TextStyle(
//                    fontWeight: FontWeight.w500,
//                    color: Colors.white,
//                    fontSize: 20),
//              ),
//            )
//          ],
//        ),
//        Column(
//          children: <Widget>[
//            RaisedButton(
//              onPressed: () => debugPrint("Account created!"),
//              color: Colors.blueGrey[900],
//              shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(20)),
//              child: Text(
//                "Create An Account",
//                style: TextStyle(
//                    fontWeight: FontWeight.w500,
//                    color: Colors.white,
//                    fontSize: 20),
//              ),
//            )
//          ],
//        ),
//      ],
//    )

//          Container(
//            child: Row(
//              children: <Widget>[
//                Icon(
//                  Icons.mail,
//                  color: Colors.blueGrey,
//                ),
//                TextField(
//                  decoration: InputDecoration(
//                      border: OutlineInputBorder(),
//                      labelText: 'Email or Phone Number'),
//                )
//              ],
//            ),
//          )
//        );
//  }
//}
//
//import 'package:flutter/material.dart';
//
//class MyApp extends StatefulWidget {
//  @override
//  _MyAppState createState() => _MyAppState();
//}
//
//class _MyAppState extends State<MyApp> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//
//        title: Text("Login",textAlign: TextAlign.center,),
//        backgroundColor: Colors.redAccent,
//      ),
//      body: Container(
//        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
//        alignment: Alignment.center,
//        padding: EdgeInsets.all(20),
//        child: Column(
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: TextField(
//                keyboardType: TextInputType.emailAddress,
//                style: TextStyle(color: Colors.grey),
//                decoration: InputDecoration(
//                    prefixIcon: Icon(Icons.email),
//                    hintText: "Email",
//                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
//
//                ),
//
//              ),
//            ),
//
//            Column(
//              children: <Widget>[
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: TextField(
//                    obscureText: true,
//                    keyboardType: TextInputType.visiblePassword,
//                    style: TextStyle(color: Colors.grey),
//                    decoration: InputDecoration(
//                        prefixIcon: Icon(Icons.keyboard),
//                        hintText: "Password",
//                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
//
//                    ),
//                  ),
//                )
//              ],
//            ),
//            Column(
//              children: <Widget>[
//                RaisedButton(onPressed: ()=>debugPrint("Logged In!"), color: Colors.redAccent,shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(20)
//                ),
//
//                  child: Text("Log In",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),),)
//              ],
//
//            ),
//            Column(
//              children: <Widget>[
//                RaisedButton(onPressed: ()=>debugPrint("Account created!"), color: Colors.redAccent,shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(20)
//                ),
//
//                  child: Text("Create An Account",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),),)
//              ],
//            )
//          ],
//
//
//        ),
//
//      ),
//    );
//  }
//}
