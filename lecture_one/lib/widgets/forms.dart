import 'package:flutter/material.dart';

class FormsWidget extends StatefulWidget {
  const FormsWidget({super.key});

  @override
  State<FormsWidget> createState() => _FormsWidgetState();
}

class _FormsWidgetState extends State<FormsWidget> {
  String firstname = " ";
  String lastname = " ";
  String email = " ";
  String password = " ";
  final _formkey = GlobalKey<FormState>();

  // ----Functions
  trysubmit(){
    final isValid = _formkey.currentState!.validate();
    if(isValid){
      _formkey.currentState!.save();
      submitForm();
    }
    else{
      print('Error');
    }
  }
  submitForm(){
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Form Widget'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Enter Your First Name'),
                      key: const ValueKey('firstname'),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'First Name should not be Empty';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        firstname = value.toString();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Enter Your Last Name'),
                      key: const ValueKey('lastname'),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'Last Name should not be Empty';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        lastname = value.toString();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Enter Your Email ID'),
                      key: const ValueKey('email'),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'Email should not be Empty';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        email = value.toString();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Enter Your Password'),
                      key: const ValueKey('password'),
                      validator: (value) {
                        if (value.toString().length <= 5) {
                          return 'Minimum Length of Password Must be 6';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        password = value.toString();
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      trysubmit();
                    },
                    child: const Text('Submit'),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
