import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBunj5fw2-0ZK0D-JP7SO83uZzCFiE0OoU",
            authDomain: "liberiando.firebaseapp.com",
            projectId: "liberiando",
            storageBucket: "liberiando.firebasestorage.app",
            messagingSenderId: "994776011938",
            appId: "1:994776011938:web:84d589b72de6c2b360f3fb",
            measurementId: "G-RTSKMLJ2DD"));
  } else {
    await Firebase.initializeApp();
  }
}
