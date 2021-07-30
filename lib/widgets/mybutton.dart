import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function onPressed;
  final String name;
  final Color color, textColor;
  MyButton({
    this.name,
    this.onPressed,
    this.color,
    this.textColor = Colors.white,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.60,
      child: Container(
        height: 45,
        width: double.infinity,
        child: ElevatedButton(
          child: Text(name),
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              //primary: Colors.white,
              primary: Color(0xFF578748),
              onPrimary: Colors.white,
              textStyle: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
