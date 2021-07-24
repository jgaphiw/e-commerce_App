import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  //final bool obserText;
  final Function validator;
  final String name;
  //final Function onTap;
  MyTextFormField({this.validator, this.name});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //obscureText: obserText,
      validator: validator,
      decoration: InputDecoration(
          hintText: name,
          hintStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder()),
    );
  }
}
