// ignore_for_file: prefer_const_constructors, avoid_single_cascade_in_expression_statements, avoid_unnecessary_containers

import 'package:avocat/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF101751),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Image.asset(
                          "assets/images/Avocats1.png",
                          width: 211,
                        ),
                        SizedBox(
                          height: 90,
                        ),
                        SignUpFrom(),
                      ],
                    ),
                  ),
                ]),
              ),
              Positioned(
                left: 0,
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: 111,
                ),
              ),

              Positioned(
                left: 0,
                bottom: 0,
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 111,
                ),
              ),
              // back to previous screen
              Positioned(
                top: 0,
                left: 0,
                child: IconButton(
                  color: Colors.white,
                  icon: const Icon(
                    Icons.arrow_back,
                    //size: 72,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    )));
  }
}

// Create a Form widget.
class SignUpFrom extends StatefulWidget {
  const SignUpFrom({super.key});

  @override
  SignUpFromState createState() {
    return SignUpFromState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class SignUpFromState extends State<SignUpFrom> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<SignUpFromState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final hostController = TextEditingController();
    final portController = TextEditingController();
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FractionallySizedBox(
            widthFactor: 0.6,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextFormField(
                controller: hostController,
                decoration: InputDecoration(
                    errorStyle: TextStyle(height: 0),
                    errorMaxLines: 1,
                    errorText: '',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(
                          left: 10), // add padding to adjust icon
                      child: Icon(
                        Icons.computer,
                        color: Color(0xFFD66746),
                      ),
                    ),
                    hintText: "Host :",
                    border: InputBorder.none),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    String errorMsg = 'le host  ne peut pas être vide';
                    awesomeDialogError(errorMsg);
                    return '';
                  }
                  return null;
                },
              ),
            ),
          ),
          SizedBox(
            height: 23,
          ),
          FractionallySizedBox(
            widthFactor: 0.6,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: portController,
                decoration: InputDecoration(
                    errorStyle: TextStyle(height: 0),
                    errorMaxLines: 1,
                    errorText: '',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(
                          left: 10), // add padding to adjust icon
                      child: Icon(
                        Icons.cable,
                        color: Color(0xFFD66746),
                      ),
                    ),
                    hintText: "Port :",
                    border: InputBorder.none),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      double.tryParse(value) == null) {
                    String errorMsg =
                        'le port ne peut pas être vide et doit être un entier';
                    awesomeDialogError(errorMsg);
                    return '';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  }
                },
                child: Text(
                  "Vérifier la connexion",
                  style: TextStyle(fontSize: 17),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(202, 209, 209, 209)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                )),
          ),
        ],
      ),
    );
  }

  awesomeDialogError(errorMsg) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.rightSlide,
      headerAnimationLoop: false,
      title: 'Error',
      desc: errorMsg,
      btnOkOnPress: () {},
      btnOkIcon: Icons.cancel,
      btnOkColor: Colors.red,
    ).show();
  }
}
