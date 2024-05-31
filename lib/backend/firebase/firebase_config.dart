import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD2rPEHOkpD1olZVh7wTlubbputGIxg4ns",
            authDomain: "app-cycle-jnnn7e.firebaseapp.com",
            projectId: "app-cycle-jnnn7e",
            storageBucket: "app-cycle-jnnn7e.appspot.com",
            messagingSenderId: "349936122876",
            appId: "1:349936122876:web:12c10ef38e42f83dacd079"));
  } else {
    await Firebase.initializeApp();
  }
}
