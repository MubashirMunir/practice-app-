import 'package:flutter/material.dart';

class validations extends StatefulWidget {
  validations({super.key});

  @override
  State<validations> createState() => _validationsState();
}

class _validationsState extends State<validations> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Process')));
                        }
                      },
                      child: Text("done"),
                    )
                  ],
                ))));
  }
}
