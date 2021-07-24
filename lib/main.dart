import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFECD59F),
              Color(0xFFF8F8F8),
            ],
          )),
          child: Scaffold(
            backgroundColor: Colors.white.withOpacity(0.0),
            body: SafeArea(
              child: Column(children: [
                Container(
                  child: SizedBox(height: 100),
                ),
                /*CircleAvatar(
                  backgroundImage: AssetImage("assets/images/logo11.png"),
                  radius: 50,
                ),*/
                Container(
                  width: 190,
                  margin: EdgeInsets.all(5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assets/images/logo11.png",
                    ),
                  ),
                ),
                /*Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo11.png",
                      height: 200,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                  ],
                )),*/
                Container(
                  child: Column(
                    children: [
                      Text(
                        "SUPA",
                        style: TextStyle(
                          color: Colors.brown.shade400,
                          fontSize: 45,
                          fontWeight: FontWeight.w300,
                          height: 2,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: SizedBox(
                  height: 0,
                )),
                Container(
                  width: 300,
                  margin: EdgeInsets.fromLTRB(16, 0, 16, 8),
                  child: SignInButton(
                    Buttons.FacebookNew,
                    //mini: true,
                    text: "Login whit Facebook",
                    padding: EdgeInsets.all(10),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: SignInButtonBuilder(
                    text: 'Login with Email',
                    padding: EdgeInsets.all(10),
                    textColor: Colors.black,
                    icon: Icons.email,
                    iconColor: Colors.red,
                    onPressed: () {},
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        //style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      Text(
                        " Sign Up",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: SizedBox(
                    height: 120,
                  ),
                )
              ]),
            ),
          ),
        ));
  }
}
