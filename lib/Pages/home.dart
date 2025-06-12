import 'package:flutter/material.dart';
import 'package:myapp/Pages/Containers/container1.dart';
import 'package:myapp/Utils/constants.dart';
import 'package:myapp/Widget/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(child: Column(children: [NavBar(), COntainer1()])),
      ),
    );
  }
}
