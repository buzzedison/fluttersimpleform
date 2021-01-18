import 'package:flutter/material.dart';
import 'forms.dart';
void main (){
  runApp(MaterialApp(
    home: RealForm() ,
    title: "Form App",
  ),);
}

class RealForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyForm(),
    );
  }
}
