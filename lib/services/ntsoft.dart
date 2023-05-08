import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:archive/archive_io.dart';
//import 'package:ini/ini.dart';
import 'package:path_provider/path_provider.dart';
import 'package:xml/xml.dart';

String btoau(String data) {
  return base64.encode(utf8.encode(Uri.decodeComponent(data)));
}

String atobu(String b64) {
  try {
    return utf8.decode(base64.decode(b64.replaceAll('\r\n', '')));
  } catch (e) {
    print(e);
    return '';
    //b64;
  }
}

String xmlToString(XmlDocument xmlDoc) {
  return xmlDoc.toString();
}

XmlDocument stringToXml(String xmlString) {
  return XmlDocument.parse(xmlString);
}

XmlDocument addAction(dynamic xmlDoc, String aid, String aname, String atype,
    String asql, String aNts) {
  if ((xmlDoc is String) && (xmlDoc == '')) {
    xmlDoc = XmlDocument.parse(
        '<?xml version=\'1.0\' encoding=\'UTF-16\'?><Actions></Actions>');
  }
  XmlDocument castedXmlDoc = xmlDoc as XmlDocument;
  var parent = castedXmlDoc.findAllElements('Actions');
  var xact = XmlElement(
    XmlName('Action'),
    [
      XmlAttribute(XmlName('ID'), aid.toUpperCase()),
      XmlAttribute(XmlName('NAME'), aname.toUpperCase()),
      XmlAttribute(XmlName('TYPE'), atype.toUpperCase()),
      XmlAttribute(XmlName('NTS'), aNts.toUpperCase()),
      XmlAttribute(XmlName('VALUE'), aNts == 'O' ? btoau(asql) : asql),
    ],
    [
      XmlElement(
        XmlName('Params'),
        [XmlAttribute(XmlName('ID'), aid)],
        //[XmlText(atype)],
      ),
    ],
  );

  parent.first.children.add(xact);

  return xmlDoc;
}

XmlDocument addParam(XmlDocument xmlDoc, String id, String prmSrc,
    String prmName, String prmVal, String prmNts) {
  var act = xmlDoc.findAllElements('Params');
  var param = XmlElement(XmlName.fromString(prmName.toUpperCase()), []);
  //prmVal ??= '';
  //prmNts = 'O';
  if (prmNts == 'O') {
    prmVal = btoau(prmVal);
  }
  param.attributes.addAll([
    XmlAttribute(XmlName.fromString('SOURCE'), prmSrc),
    XmlAttribute(XmlName.fromString('NTS'), prmNts),
    XmlAttribute(XmlName.fromString('VALUE'), prmVal)
  ]);
  for (XmlElement element in act) {
    if (element.getAttribute('ID')?.toString() == id) {
      element.children.add(param);
    }
  }
  return xmlDoc;
}

String getDocTag(XmlDocument docx, String tag) {
  try {
    String? nts = docx.findAllElements(tag).first.getAttribute('NTS')?.trim();
    String? str = docx.findAllElements(tag).first.getAttribute('VALUE')?.trim();
    nts ??= 'N';
    str ??= '';
    if (nts == 'O') {
      str = atobu(str);
    }
    return str.trim();
  } catch (e) {
    return '';
  }
}

int ntsIntParse(String s) {
  int value = 0;
  try {
    value = int.parse(s);
  } catch (e) {
    value = 0;
  }
  return value;
}

Future<void> sendPostRequest(
    String url,
    String jwtToken,
    String mode,
    String payload,
    Function? onSuccess,
    Function? onFail,
    List arguments) async {
  final Map<String, String> headers = {'Content-type': 'application/json'};
  if (jwtToken.isNotEmpty) {
    headers['Authorization'] = 'Bearer $jwtToken';
  }
  List<String> keysMode = mode.split('');
  String responseBodyString = '';

  try {
    final http.Response response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: payload,
    );

    // Print the response
    // print(response.body);
    final bytes = response.bodyBytes;
    final first4Bytes = bytes.sublist(0, 4);
    if ((first4Bytes.length == 4) &&
        (first4Bytes[0] == 80) &&
        (first4Bytes[1] == 75) &&
        (first4Bytes[2] == 3) &&
        (first4Bytes[3] == 4)) {
      final Archive archive = ZipDecoder().decodeBytes(bytes);

      if (archive.files.isNotEmpty) {
        responseBodyString = utf8.decode(archive.first.content);
      }
    } else {
      responseBodyString = utf8.decode(bytes);
    }
    if (keysMode[1] == 'O') {
      responseBodyString = atobu(responseBodyString);
    }
    //
    if (keysMode[3] == 'A') {
      final List<String> sArr =
          responseBodyString.split(String.fromCharCode(4));
      if (sArr.length != 3) {
        //print('Data server not buffered');
        if (onFail != null) {
          onFail('Data server not buffered', arguments);
        }
        return;
      }
      //print(sArr[1]);
      if (sArr[0] != '0') {
        if (onSuccess != null) {
          onSuccess(sArr[2], arguments);
        }
      } else if (onFail != null) {
        onFail(sArr[1], arguments);
      }
    } else {
      if (onSuccess != null) {
        onSuccess(responseBodyString, arguments);
      }
    }
  } catch (error) {
    // Handle errors
    if (onFail != null) {
      onFail(error.toString(), arguments);
    }
  }
}

List<List<String>> csv2Array(String csv, String lineDel, String colDel) {
  var result = [];
  var lines = [];
  if (csv == '') return [];
  lines = csv.split(lineDel);
  for (var i = 0; i < lines.length; i++) {
    result.add(lines[i].split(colDel));
  }
  return result.cast<List<String>>();
}

class MySession {
  int idUser = 0;
  String idSession = '';
  String token = '';
  bool saveLogin = false;
  String login = '';
  String host = '';
  int port = 0;
  dynamic tmpData = '';

  static final MySession _singleton = MySession._internal();
  factory MySession() {
    return _singleton;
  }

  MySession._internal();

  Map<String, dynamic> toJson() {
    return {
      'idUser': idUser,
      'idSession': idSession,
      'token': token,
      'saveLogin': saveLogin,
      'login': (saveLogin) ? login : '',
      'host': host,
      'port': port,
    };
  }
}

Future<String> getTemporaryDirectoryPath(String fname) async {
  try {
    final Directory tempDir = await getTemporaryDirectory();
    return tempDir.path + '/$fname';
  } catch (e) {
    return fname;
  }
}

void writeStringToFile(String content, String filePath) {
  final file = File(filePath);
  file.writeAsStringSync(content);
}

Future<String> readStringFromFile(String filePath) async {
  final file = File(filePath);
  return await file.readAsString();
}

Future<void> saveMySessionToIniFile(MySession mySession, String fname) async {
  try {
    final String iniString = btoau(json.encode(mySession));
    String x = await getTemporaryDirectoryPath(fname);
    writeStringToFile(iniString, x);

    //final File file = File(x);
    //final File file = File('${await getExternalStorageDirectory()}/$fname');
    //await file.writeAsString(iniString);
  } catch (e) {
    print('Error saving MySession to ini file: $e');
  }
}

Future<void> loadMySessionFromIniFile(String fname) async {
  try {
    String x = await getTemporaryDirectoryPath(fname);
    //final File file = File(x);
    //final File file = File('${await getExternalStorageDirectory()}/$fname');
    //final String iniString = await file.readAsString();

    final String iniString = await readStringFromFile(x);

    final Map<String, dynamic> iniMap = json.decode(atobu(iniString));

    MySession mySession = MySession();
    mySession.idUser = iniMap['idUser'];
    mySession.idSession = iniMap['idSession'];
    mySession.token = iniMap['token'];
    mySession.saveLogin = iniMap['saveLogin'];
    mySession.login = iniMap['login'];
    mySession.host = iniMap['host'];
    mySession.port = iniMap['port'];
  } catch (e) {
    print('Error reading session from INI file: $e');
    MySession mySession = MySession();
    mySession.idUser = 0;
    mySession.idSession = '';
    mySession.token = '';
    mySession.saveLogin = false;
    mySession.login = '';
    mySession.port = 0;
  }
}
