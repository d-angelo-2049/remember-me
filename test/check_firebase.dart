import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/cupertino.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseFunctions.instance.useFunctionsEmulator('localhost', 5001);
  createFood();
}

Future<void> createFood() async {
  HttpsCallable callable =
      FirebaseFunctions.instance.httpsCallable('createFood');
  final resp = await callable.call(<String, dynamic>{
    'name': 'soy',
    'expiration': 'tomorrow',
    'location': 'pantry',
    'imageString': 'hogehoge',
    'status': 'unconsume'
  });

  print("result: ${resp.data}");

}
