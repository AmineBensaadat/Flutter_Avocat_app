// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, dead_code, duplicate_ignore, avoid_print, prefer_interpolation_to_compose_strings, sort_child_properties_last

import 'package:avocat/pages/signup.dart';
import 'package:avocat/pages/two_column_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:avocat/services/ntsoft.dart';
import 'package:xml/xml.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isDialOpen = ValueNotifier(false);
    bool rmIcons = false;
    final loginController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/welcom_bg.png"),
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
                            height: 100,
                          ),
                          Image.asset(
                            "assets/images/Avocats1.png",
                            width: 211,
                          ),
                          SizedBox(
                            height: 90,
                          ),
                          LoginFrom(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, "/forgotPassword");
                                  },
                                  child: Text(
                                    " mot de passe oublié",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )),
                            ],
                          )
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
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        activeIcon: Icons.close,
        spacing: 3,
        openCloseDial: isDialOpen,
        childPadding: const EdgeInsets.all(5),
        spaceBetweenChildren: 4,

        buttonSize:
            Size.fromRadius(20), // SpeedDial size which defaults to 56 itself
        // iconTheme: IconThemeData(size: 22),

        childrenButtonSize: Size.fromRadius(20),
        visible: true,
        direction: SpeedDialDirection.up,
        switchLabelPosition: false,

        /// If true user is forced to close dial manually
        closeManually: false,

        /// If false, backgroundOverlay will not be rendered.
        renderOverlay: false,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        curve: Curves.bounceIn,
        onOpen: () => debugPrint('OPENING DIAL'),
        onClose: () => debugPrint('DIAL CLOSED'),
        useRotationAnimation: true,
        // foregroundColor: Colors.black,
        backgroundColor: Color(0xFFD66746),
        // activeForegroundColor: Colors.red,
        // activeBackgroundColor: Colors.blue,
        elevation: 8.0,
        animationCurve: Curves.elasticInOut,
        isOpenOnStart: false,
        animationDuration: const Duration(milliseconds: 500),
        children: [
          SpeedDialChild(
            child: !rmIcons ? const Icon(Icons.password_outlined) : null,
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            label: 'Changement mot de passe',
            onTap: () => Navigator.pushNamed(context, "/resetPassword"),
            onLongPress: () => debugPrint('FIRST CHILD LONG PRESS'),
          ),
          SpeedDialChild(
              child: !rmIcons
                  ? const Icon(
                      Icons.settings_outlined,
                      size: 15.0,
                    )
                  : null,
              backgroundColor: Colors.deepOrange,
              foregroundColor: Colors.white,
              label: 'parameter',
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Signup()),
                  )),
          SpeedDialChild(
            // ignore: dead_code
            child: !rmIcons ? const Icon(Icons.view_sidebar) : null,
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            label: 'À propos',
            visible: true,
            onTap: () => Navigator.pushNamed(context, "/aboutScreen"),
          ),
        ],
      ),
    );
  }

  testA(BuildContext contex) async {
    MySession mySession = MySession();
    mySession.idUser = 123;
    mySession.host = '196.92.7.80';
    mySession.port = 8009;

    XmlDocument xdoc = addAction('', '1', 'TEMP1', 'PROCEDURE', 'ACC', 'O');
    xdoc = addParam(xdoc, '1', '0', 'Login_', 'A', 'O');
    xdoc = addParam(xdoc, '1', '0', 'PassWord_', 'A', 'O');

    String x = xmlToString(xdoc);

    // try {
    //   //  Test de sauvegarde de session.INI
    //   mySession.host = '192.168.0.110';
    //   await saveMySessionToIniFile(mySession, 'session.ini');
    //   mySession.host = '';
    //   await loadMySessionFromIniFile('session.ini');
    //   //x = x + mySession.host;
    //   print(mySession.host);
    //   // On doit récupérer :  '192.168.0.110'
    // } catch (e) {
    //   print(e);
    // }

    // Execution de l'action de LOGIN sur Diam
    String url = 'http://${mySession.host}:${mySession.port.toString()}/AOOA';
    print(url);
    await sendPostRequest(
        url, mySession.token, 'AOOA', x, testAOK, testAKO, [contex, url]);
  }
}

Future<void> testAKO(String error, List arguments) async {
  AwesomeDialog(
    context: arguments[0],
    dialogType: DialogType.info,
    animType: AnimType.rightSlide,
    title: 'KO:' + arguments[1],
    desc: error,
    btnCancelOnPress: () {},
    btnOkOnPress: () {},
  ).show();
  return;
}

Future<void> testAOK(String data, List arguments) async {
  print(data);
  AwesomeDialog(
    context: arguments[0],
    dialogType: DialogType.info,
    animType: AnimType.rightSlide,
    title: 'OK',
    desc: data,
    btnCancelOnPress: () {},
    btnOkOnPress: () {},
  ).show();
  return;
}

// Create a Form widget.
class LoginFrom extends StatefulWidget {
  const LoginFrom({super.key});

  @override
  LoginFromState createState() {
    return LoginFromState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class LoginFromState extends State<LoginFrom> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<LoginFromState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final loginController = TextEditingController();
    final passwordController = TextEditingController();
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
                controller: loginController,
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
                        Icons.person,
                        color: Color(0xFFD66746),
                      ),
                    ),
                    hintText: "Identifiant :",
                    border: InputBorder.none),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    String errorMsg = 'l\'identifiant ne peut pas être vide';
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
                obscureText: true,
                controller: passwordController,
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
                        Icons.lock,
                        color: Color(0xFFD66746),
                      ),
                    ),
                    hintText: "Password :",
                    border: InputBorder.none),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    String errorMsg = 'le mot de passe ne peut pas être vide';
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
                      MaterialPageRoute(
                          builder: (context) => DashboardTwoColumnCards()),
                    );
                  }
                },
                child: Text(
                  "connexion",
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFFD66746)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 80, vertical: 10)),
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
