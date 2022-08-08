import 'package:flutter/material.dart';

import 'SecondScreen.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen>{

  String _name = '';
  String _email = '';
  String _phone = '';
  String _fname = '';
  String _dob = '';
  String _address = '';
  String _lknown = '';
  String _gender = '';
  String _nationality = '';
  String _Qualify = '';
  String _jobtitl = '';
  String _experience = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      maxLength: 20,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (value) {
        _name = value!;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Email is Required';
        }

        if (!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (value) {
        _email = value!;
      },
    );
  }

  Widget _buildPhone() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone No.'),
      maxLength: 10,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Phone is Required';
        }

        return null;
      },
      onSaved: (value) {
        _phone = value!;
      },
    );
  }

  Widget _buildFname() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Father Name'),
      maxLength: 20,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Father Name is Required';
        }

        return null;
      },
      onSaved: (value) {
        _fname = value!;
      },
    );
  }

  Widget _buildDob() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'DOB'),
      maxLength: 10,
      validator: (value) {
        if (value!.isEmpty) {
          return 'DOB is Required';
        }

        return null;
      },
      onSaved: (value) {
        _dob = value!;
      },
    );
  }

  Widget _buildAddress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Address'),
      maxLength: 30,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Address is Required';
        }

        return null;
      },
      onSaved: (value) {
        _address = value!;
      },
    );
  }

  Widget _buildLknown() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Languages Known'),
      maxLength: 30,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Language Known is Required';
        }

        return null;
      },
      onSaved: (value) {
        _lknown = value!;
      },
    );
  }

  Widget _buildGender() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Gender'),
      maxLength: 10,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Gender is Required';
        }

        return null;
      },
      onSaved: (value) {
        _gender = value!;
      },
    );
  }

  Widget _buildNationality() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Nationality'),
      maxLength: 15,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Nationality is Required';
        }

        return null;
      },
      onSaved: (value) {
        _nationality = value!;
      },
    );
  }

  Widget _buildQualify() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Qualification'),
      maxLength: 10,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Qualification is Required';
        }

        return null;
      },
      onSaved: (value) {
        _Qualify = value!;
      },
    );
  }

  Widget _buildJobtitl() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Designation'),
      maxLength: 15,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Designation is Required';
        }

        return null;
      },
      onSaved: (value) {
        _jobtitl = value!;
      },
    );
  }

  Widget _buildExperience() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Experience'),
      maxLength: 15,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Experience is Required';
        }

        return null;
      },
      onSaved: (value) {
        _experience = value!;
      },
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Bio Data Form")),
      body: SingleChildScrollView(
        child:Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildName(),
            _buildFname(),
            _buildEmail(),
            _buildPhone(),
            _buildAddress(),
            _buildDob(),
            _buildGender(),
            _buildQualify(),
            _buildJobtitl(),
            _buildExperience(),
            _buildNationality(),
            _buildLknown(),
            SizedBox(height: 100),
            RaisedButton(
                child: Text('Submit', style: TextStyle(color: Colors.blue, fontSize: 16),),
                onPressed: () {
                  if(!_formKey.currentState!.validate()){
                    return;
                }
                    _formKey.currentState!.save();
                    print(_name);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondScreen(Name:_name,Fname:_fname,Email:_email,Phone:_phone,Address:_address,DOB:_dob,Gender:_gender,Qualify:_Qualify,Desig:_jobtitl,Experience:_experience,Nationality:_nationality,LKnown:_lknown)));
                },
        )
          ],
        ))
      ),
    ));
  }
}