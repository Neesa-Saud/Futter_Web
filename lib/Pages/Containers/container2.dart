import 'package:flutter/material.dart';
import 'package:myapp/Utils/colors.dart';
import 'package:myapp/Utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class COntainer2 extends StatelessWidget {
  const COntainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileContainer2(),
      desktop: (context) => DesktopContainer2(),
    );
  }

  //=======DeskTop=======

  // ignore: non_constant_identifier_names
  Widget DesktopContainer2() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  // ignore: sort_child_properties_last
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(vector1),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  right: -20,
                  top: -20,
                ),
                Positioned(
                  // ignore: sort_child_properties_last
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(vector2),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  bottom: -20,
                  left: -20,
                ),
                Positioned(
                  // ignore: sort_child_properties_last
                  child: Container(
                    width: double.infinity,
                    height: 712,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(dashboard),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  left: 43,
                  right: 43,
                  bottom: 0,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(samsung),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      width: 160,
      height: 36,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }

  //=======Mobile=======

  // ignore: non_constant_identifier_names
  Widget MobileContainer2() {
    // ignore: sized_box_for_whitespace
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
            child: Container(
              height: 195,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(dashboard),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          Container(
            width: double.infinity,
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(samsung),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
