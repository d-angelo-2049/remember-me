import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/cupertino.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  // FirebaseFunctions.instance.useFunctionsEmulator('localhost', 5001);
  createFood();
  createFood();
  dangerList();
}

Future<void> createFood() async {
  HttpsCallable callable =
  FirebaseFunctions.instanceFor(region: 'us-central1').httpsCallable('postFood');
  final resp = await callable.call(<String, dynamic>{
    'name': 'soy',
    'expiration': 'tomorrow',
    'location': 'pantry',
    'imageString': 'hogehoge',
    'status': 'unconsume'
  });

  print("result: ${resp.data}");

}

Future<void> dangerList() async {
  HttpsCallable callable =
  FirebaseFunctions.instanceFor(region: 'us-central1').httpsCallable('dangerList');
  final resp = await callable.call();

  print("result: ${resp.data}");

}


