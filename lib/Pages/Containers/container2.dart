import 'package:flutter/material.dart';
import 'package:myapp/Utils/colors.dart';
import 'package:myapp/Utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class COntainer2 extends StatelessWidget {
  const COntainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileContainer1(),
      desktop: (context) => DesktopContainer2(),
    );
  }

  //=======DeskTop=======

  Widget DesktopContainer2() {
    return Container();
  }

  //=======Mobile=======

  Widget MobileContainer1() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        children: [
          Container(
            height: w! / 1.2,
            width: w! / 1.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(illustration1),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track your \nexpenses to \nSave Money',
                  style: TextStyle(
                    fontSize: w! / 20,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Helps you to organize your income and expenses',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                SizedBox(height: 20),

                Container(
                  height: 45,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        AppColors.primary,
                      ),
                    ),
                    onPressed: () {},
                    label: Text('Try free Demo'),
                    icon: Icon(Icons.arrow_drop_down),
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  '- Web ,iOs and Android',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
