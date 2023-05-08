// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, dead_code, duplicate_ignore

import 'package:avocat/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:avocat/services/ntsoft.dart';
import 'package:xml/xml.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  static const customSwatch = MaterialColor(
    0xFFFF5252,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFFF5252),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isDialOpen = ValueNotifier(false);
    //bool customDialRoot = true;
    //bool extend = false;
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
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(66),
                            ),
                            width: 266,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: TextField(
                              controller: loginController,
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.person,
                                    color: Color(0xFFD66746),
                                  ),
                                  hintText: "Identifiant :",
                                  border: InputBorder.none),
                            ),
                          ),
                          SizedBox(
                            height: 23,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(66),
                            ),
                            width: 266,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                  suffix: Icon(
                                    Icons.visibility,
                                    color: Color(0xFFD66746),
                                  ),
                                  icon: Icon(
                                    Icons.lock,
                                    color: Color(0xFFD66746),
                                  ),
                                  hintText: "Password :",
                                  border: InputBorder.none),
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              testA(context);
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFFD66746)),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 90, vertical: 10)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(27))),
                            ),
                            child: Text(
                              "connexion",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
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
      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SpeedDial(
        // animatedIcon: AnimatedIcons.menu_close,
        // animatedIconTheme: IconThemeData(size: 22.0),
        // / This is ignored if animatedIcon is non null
        // child: Text("open"),
        // activeChild: Text("close"),
        icon: Icons.add,
        activeIcon: Icons.close,
        spacing: 3,
        openCloseDial: isDialOpen,
        childPadding: const EdgeInsets.all(5),
        spaceBetweenChildren: 4,
        // dialRoot: customDialRoot? (ctx, open, toggleChildren) {
        //   return ElevatedButton(
        //     onPressed: toggleChildren,
        //     style: ElevatedButton.styleFrom(
        //       primary: Colors.blue[900],
        //       padding: const EdgeInsets.symmetric(
        //           horizontal: 22, vertical: 18),
        //     ),
        //     child: const Text(
        //       "Custom Dial Root",
        //       style: TextStyle(fontSize: 17),
        //     ),
        //   );
        // } : null,
        buttonSize:
            Size.fromRadius(20), // SpeedDial size which defaults to 56 itself
        // iconTheme: IconThemeData(size: 22),

        /// Transition Builder between label and activeLabel, defaults to FadeTransition.
        // labelTransitionBuilder: (widget, animation) => ScaleTransition(scale: animation,child: widget),
        /// The below button size defaults to 56 itself, its the SpeedDial childrens size
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
        // shape: customDialRoot
        //     ? const RoundedRectangleBorder()
        //     : const StadiumBorder(),
        // childMargin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                  )
//Navigator.pushNamed(context, "/signup"),
              ),
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
