import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kaizenteam/controller/auth/authState.dart';
import 'package:kaizenteam/view/home/bottomnavigationbar_page.dart';
import 'package:kaizenteam/view/splash/splash.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Authstate(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomnavigationbarPage(),
      ),
    );
  }
}
