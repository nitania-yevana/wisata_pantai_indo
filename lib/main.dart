import 'package:flutter/material.dart';
import 'package:wisata_pantai_indo/data/pantai_data.dart';
import 'package:wisata_pantai_indo/screens/PencarianScreen.dart';
import 'package:wisata_pantai_indo/screens/infopantai_screen.dart';
import 'package:wisata_pantai_indo/screens/profilpengguna_screen.dart';
import 'package:wisata_pantai_indo/screens/PencarianScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Pantai Indo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.lightBlueAccent),
            titleTextStyle: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )
        ),
        colorScheme:
        ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent).copyWith(
          primary: Colors.lightBlueAccent,
          surface: Colors.lightBlueAccent[50],
        ),
        useMaterial3: true,
      ),
      home: PencarianScreen(),
      //home: sign_in_screen(),
      //home: ProfilPenggunaScreen(),
      //home: InfoPantaiScreen(pantai: pantaiList[0]),
    );
  }
}