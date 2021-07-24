
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/LoginPage.dart';
import 'package:flutter_application_1/widgets/changescreen.dart';
import 'package:flutter_application_1/widgets/mybutton.dart';
import 'package:flutter_application_1/widgets/mytextformfield.dart';
import 'package:flutter_application_1/widgets/passwordtextformfield.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);
bool obserText = true; //ซ่อนพาส

class _SignUpState extends State<SignUp> {
  void vaildation() {
    final FormState _form = _formKey.currentState;
    if (_form.validate()) {
      print('Yes');
    } else {
      print('No');
    }
  }

  Widget _buildAllTextFormField() {
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyTextFormField(
            name: 'UserName',
            validator: (value) {
              if (value.length < 6) {
                return 'UserName Is Too Short';
              } else if (value == '') {
                return 'Please Fill UserName';
              }
              return '';
            },
          ),
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
          MyTextFormField(
            name: 'Phone Number',
            validator: (value) {
              //ตรวจสอบ
              if (value == '') {
                //ถ้าว่าง
                return 'Please Fill Phone Number';
              } else if (value.length < 10) {
                //ถ้าน้อยกว่า8
                return 'Phone Number Must Be 11';
              }
              return ''; //ส่งค่าnullไป
            },
          ),
        ],
      ),
    );
  }

  Widget _buildButtompart() {
    return Container(
      height: 400,
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      //color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildAllTextFormField(),
          MyButton(
            name: 'SignUp',
            onPressed: () {
              vaildation();
            },
          ),
          ChangeScreen(
            name: 'Login',
            whicAccount: 'I Have Already An Account!',
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => Login()));
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //ขอบแป้นพิมไม่เกิน
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 220,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                _buildButtompart(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
