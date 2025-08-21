import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/start.dart';
import 'package:flutter_application_1/products_pages/API_provider.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  ApiProvider apiProvider = ApiProvider();
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (c) => Start()), // start() is for testing
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset("assets/images (3).png")),
    );
  }
}
