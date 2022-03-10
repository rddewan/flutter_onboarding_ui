import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/home_page.dart';
import 'package:flutter_onboarding_ui/on_boarding_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isOnBoarding = true;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  void initState() {   
    super.initState(); 
    initSharedPref(); 
  }

  void initSharedPref() async {
    final pref = await SharedPreferences.getInstance();
    setState(() {
      isOnBoarding = pref.getBool('ON_BOARDING') ?? true;
    });
    
  }
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(     
        primarySwatch: Colors.blue,
      ),
      home: isOnBoarding ? OnBoardingPage() : const HomePage(),
    );
  }
}
