import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String _question1;
  String _question2;
  String _question3;
  String _question4;
  String _question5;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildQuestion1() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Question 1'),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Answer is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _question1 = value;
      },
    );
  }

  Widget _buildQuestion2() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Question 2'),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Answer is Required';
        }

      //  if (!RegExp(
       //         r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
       //     .hasMatch(value)) {
         // return 'Please enter a valid email Address';
       // }

        return null;
      },
      onSaved: (String value) {
        _question2 = value;
      },
    );
  }

  Widget _buildQuestion3() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Question 3'),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Answer is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _question3 = value;
      },
    );
  }

  Widget _buildQuestion4() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Question 4'),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Answer is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _question4 = value;
      },
    );
  }

  Widget _buildQuestion5() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Question 5'),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Answer is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _question5 = value;
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Test")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildQuestion1(),
                _buildQuestion2(),
                _buildQuestion3(),
                _buildQuestion4(),
                _buildQuestion5(),
                SizedBox(height: 100),
                RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

                    print(_question1);
                    print(_question2);
                    print(_question3);
                    print(_question4);
                    print(_question5);


                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
