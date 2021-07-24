import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function onPressed;
  final String name;
  MyButton({this.name, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 45,
        width: double.infinity,
        child: ElevatedButton(
          child: Text(name),
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              primary: Colors.purple[200],
              textStyle: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
