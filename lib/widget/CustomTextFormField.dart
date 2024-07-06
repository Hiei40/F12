import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customtextformfield extends StatelessWidget {
  const Customtextformfield({super.key, required this.Controller, required this.Label, required this.icon, required this.keyboard});
final TextEditingController Controller;
final String  Label;
final IconData icon;
final TextInputType keyboard;
  @override
  Widget build(BuildContext context) {
    return     Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        controller: Controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          // hintText: "E-mail"
          labelText: Label,
          prefixIcon: Icon(icon),


        ),
        keyboardType:keyboard ,
      ),
    );
  }
}
