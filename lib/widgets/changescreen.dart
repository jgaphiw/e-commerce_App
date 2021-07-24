import 'package:flutter/material.dart';

class ChangeScreen extends StatelessWidget {
  final String whicAccount;
  final Function onTap;
  final String name;
  ChangeScreen({this.name, this.onTap, this.whicAccount});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(whicAccount),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: onTap,
            //() {
            //Navigator.of(context).pushReplacement(
            // MaterialPageRoute(builder: (ctx) => Login()));
            //},
            child: Text(
              name,
              style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
