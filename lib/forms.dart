import 'package:flutter/material.dart';


class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  String _firstName;
  String _lastName;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildFirstName () {
    return TextFormField(
      decoration: InputDecoration(labelText: 'First Name'),
      validator: (value){
        if (value.isEmpty){
          return 'Please Enter your first name';
        }
        return null;
      },
      onSaved: (value){
        _firstName = value;

      },
    );
  }

  Widget _buildLastName(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Last Name'),
      validator: (value){
        if (value.isEmpty){
          return 'Please Enter your last name';
        }
        return null;
      },
      onSaved: (value){
        _lastName = value;

      },
    );
  }
  @override

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 200, 10, 50),
      padding: EdgeInsets.all(50.0),
      child: Form(
        key: _formKey,
        child: Column(
          children:<Widget> [
            _buildFirstName(),
            _buildLastName(),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text('Submit', style: TextStyle(
                    fontSize: 30.0, color: Colors.white
                  ),),
                ),
                onPressed: (){
                  if (!_formKey.currentState.validate()){
                    return;
                  }

                  _formKey.currentState.save();
                  print(_firstName);
                  print(_lastName);

            }

            )

          ],
        ),
      ),
    );
  }
}
