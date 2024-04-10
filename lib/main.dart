import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/pages/home_page.dart';
import 'package:shop_app/providers/cart_provider.dart';


void main() async {
WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
   await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "AIzaSyAI7inSHSrNAO_51053vYgPJG0Lk6F5-vs",
  authDomain: "market-place-16881.firebaseapp.com",
  projectId: "market-place-16881",
  storageBucket: "market-place-16881.appspot.com",
  messagingSenderId: "825574940956",
  appId: "1:825574940956:web:782d134c57f6fa71475ad9",
  measurementId: "G-MG457204BZ"));
  } else {
   await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // from provider, a dependency to add to pubspec.yaml and it funtions in state management
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'Shopping App',
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.yellow, primary: Colors.yellow),
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(fontSize: 20, color: Colors.black)),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            prefixIconColor: Color.fromRGBO(72, 72, 147, 1),
          ),
          textTheme: const TextTheme(
            titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            bodySmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
