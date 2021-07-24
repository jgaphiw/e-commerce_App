
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/SignUpPage.dart';
import 'package:flutter_application_1/widgets/changescreen.dart';
import 'package:flutter_application_1/widgets/mybutton.dart';
import 'package:flutter_application_1/widgets/mytextformfield.dart';
import 'package:flutter_application_1/widgets/passwordtextformfield.dart';

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
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Login',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
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
          MyButton(
            onPressed: () {
              vaildation();
            },
            name: 'Login',
          ),
          ChangeScreen(
            name: 'SingUp',
            whicAccount: 'I Have Not Account!',
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => SignUp()));
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Form(
          key: _formKey,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10), //ไม่ติดขอบ
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAllPart(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
