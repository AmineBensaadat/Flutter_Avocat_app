// ignore_for_file: prefer_const_constructors, avoid_single_cascade_in_expression_statements, avoid_unnecessary_containers

import 'package:avocat/pages/login.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Groupe3.png"),
                fit: BoxFit.cover),
          ),
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
                          height: 180,
                        ),
                        Image.asset(
                          "assets/images/Avocats1.png",
                          width: 211,
                        ),
                        SizedBox(
                          height: 90,
                        ),
                        ResetPasswordFrom(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
              Positioned(
                left: 0,
                bottom: 0,
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 111,
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
class ResetPasswordFrom extends StatefulWidget {
  const ResetPasswordFrom({super.key});

  @override
  ResetPasswordFromState createState() {
    return ResetPasswordFromState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class ResetPasswordFromState extends State<ResetPasswordFrom> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<ResetPasswordFromState>.
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
                keyboardType: TextInputType.emailAddress,
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
                        Icons.email,
                        color: Color(0xFFD66746),
                      ),
                    ),
                    hintText: "Email :",
                    border: InputBorder.none),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty || !isEmail(value)) {
                    String errorMsg = 'Email non Valide';
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
                  "Envoyer",
                  style: TextStyle(fontSize: 17),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFFD66746)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 95, vertical: 10)),
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

  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(em);
  }
}
