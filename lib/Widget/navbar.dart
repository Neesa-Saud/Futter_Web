import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileNavBar(),
      desktop: (context) => DesktopNavBar(),
    );
  }

  Widget MobileNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Icon(Icons.menu), navLogo()],
      ),
    );
  }

  Widget DesktopNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Features'),
              navButton('About us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Request a Demo'),
            ),
          ),
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin : EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        child: Text(text, style: TextStyle(color: Colors.black, fontSize: 18)),
        onPressed: () {},
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/logo.png')),
      ),
    );
  }
}
