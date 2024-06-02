import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fly/firebase_options.dart';
import 'package:fly/views/screens/home_page/page_view/home_page.dart';
import 'package:fly/views/screens/log_in_page/page_view/login_page.dart';
import 'package:fly/views/screens/register_page/page_view/register_page.dart';
import 'package:fly/views/screens/splash_page/page_view/splash_page.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(Fly());
}

class Fly extends StatefulWidget {
  const Fly({super.key});

  @override
  State<Fly> createState() => _FlyState();
}

class _FlyState extends State<Fly> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "this is the chat app ",
      // color: Color(0xff800020),
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: false,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "Log_in_page": (context) => LoginPage(),
        "Register_page": (context) => RegisterPage(),
        "home_page": (context) => HomePage(),
      },
    );
  }
}
