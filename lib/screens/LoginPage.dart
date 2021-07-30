import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/SignUpPage.dart';

import 'package:flutter_application_1/widgets/changescreen.dart';
import 'package:flutter_application_1/widgets/mybutton.dart';
import 'package:flutter_application_1/widgets/mytextformfield.dart';
import 'package:flutter_application_1/widgets/passwordtextformfield.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
RegExp regExp = new RegExp(p);
void vaildation() {
  final FormState _form = _formKey.currentState;
  if (_form.validate()) {
    print('Yes');
  } else {
    print('No');
  }
}

bool obserText = true; //ซ่อนพาส

class _LoginState extends State<Login> {
  Widget _buildAllPart() {
    return Container(
      height: 220,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          /*Text(
            'Login',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),*/
          MyTextFormField(
            name: 'Email',
            validator: (value) {
              if (value == '') {
                return 'Please Fill Email';
              } else if (!regExp.hasMatch(value)) {
                return 'Email Is Invaild';
              }
              return '';
            },
          ),
          PasswordTextFormField(
              obserText: obserText,
              name: 'Password',
              validator: (value) {
                //ตรวจสอบ
                if (value == '') {
                  //ถ้าว่าง
                  return 'Please Fill Password';
                } else if (value.length < 8) {
                  //ถ้าน้อยกว่า8
                  return 'Password Is Too Short';
                }
                return ''; //ส่งค่าnullไป
              },
              onTap: () {
                setState(() {
                  obserText = !obserText; //ซ่อนพาส
                });
              }),
          MyButton(
            onPressed: () {
              vaildation();
            },
            name: 'Login',
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.height,
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
                  child: SizedBox(height: 50),
                ),
                Container(
                  width: 190,
                  margin: EdgeInsets.all(5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assets/images/logo11.png",
                      height: 150,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
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
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10), //ไม่ติดขอบ
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildAllPart(),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.60,
                  margin: EdgeInsets.fromLTRB(16, 0, 16, 8),
                  child: SignInButton(
                    Buttons.FacebookNew,
                    //mini: true,
                    text: "Login whit Facebook",
                    padding: EdgeInsets.all(10),
                    onPressed: () {},
                  ),
                ),
                ChangeScreen(
                  name: 'SingUp',
                  whicAccount: 'I Have Not Account!',
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (ctx) => SignUp()));
                  },
                )
              ]),
            ),
          ),

          /* body: Container(
          child: Form(
            child: Column(
              children: [
                Text("Email", style: TextStyle(fontSize: 20)),
                TextFormField(),
                Text("Password", style: TextStyle(fontSize: 20)),
                TextFormField()
              ],
            ),
          ),
        ),*/
        ),
      ),
    );
  }
}
