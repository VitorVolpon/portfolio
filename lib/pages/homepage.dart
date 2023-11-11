import 'package:flutter/material.dart';
import 'package:portfolio/responsive/mobile.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/responsive/web.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        isMobile: MyMobile(), 
        isWeb: MyWeb(),
      ),
    );
  }
}