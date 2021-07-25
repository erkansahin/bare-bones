import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage() : super();

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Landing page")),
    );
  }
}
