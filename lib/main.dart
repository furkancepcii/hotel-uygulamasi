import 'package:flutter/material.dart';
import 'package:proje/giris.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(centerTitle: true, backgroundColor: Colors.white),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black)
            .copyWith(background: Colors.white),
      ),
      home: LoginPage(),
    );
    return materialApp;
  }
}
