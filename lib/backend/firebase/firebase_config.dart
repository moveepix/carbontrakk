import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCjXF4MEakQqqaT6ZH4VUDI80uzfxkDaK4",
            authDomain: "carbontrakk.firebaseapp.com",
            projectId: "carbontrakk",
            storageBucket: "carbontrakk.appspot.com",
            messagingSenderId: "252609227792",
            appId: "1:252609227792:web:465290c79e021ff354ae95",
            measurementId: "G-V8HNR1J4MQ"));
  } else {
    await Firebase.initializeApp();
  }
}
