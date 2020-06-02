import 'package:flutter/material.dart';

/* Designed to be used in a dialog box
  Need to incorporate the dialog box directly in it next
 */

class UrlForm extends StatefulWidget {
  UrlForm({Key key, @required this.onChanged}) : super(key: key);
  @override
  UrlFormState createState() { return UrlFormState(); }
  final ValueChanged<String> onChanged;
}

class UrlFormState extends State<UrlForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: AspectRatio(
        aspectRatio: 5/2,
        child: Column(
          children: <Widget> [
            TextFormField(
              validator: (value) {
                if(value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onSaved: (String value) {
                widget.onChanged(value);
                Navigator.of(context).pop();
              }
            ),
            RaisedButton(
              onPressed: () {
                if(_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                }
              },
              child: Text("Submit"),
            )
          ]
        )
      )
    );
  }
}
