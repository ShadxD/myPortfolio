import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
    );
  }

  Widget MobileNavBar() {
    return const SizedBox();
  }

  Widget DesktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 170),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DefaultTextStyle(
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 20,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Shad'),
              ],
              isRepeatingAnimation: true,
              onTap: () {},
            ),
          ),
          Row(
            children: [
              navButton('Home'),
              navButton('About'),
              navButton('Skills'),
              navButton('Portfolio'),
              navButton('Contact'),
            ],
          ),
          // Container(
          //   height: 45,
          //   child: onHover(
          //     child: ElevatedButton(
          //       style: borderedButtonStyle,
          //       onPressed: () {},
          //       child: Text(
          //         "Let's Talk",
          //         style: TextStyle(color: AppColors.primary),
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 18),
      ),
    );
  }
  // Widget navLogo() {
  //   return (Container(
  //     width: 110,
  //     decoration: BoxDecoration(
  //       image: DecorationImage(
  //         image: AssetImage('assets/images/logo1.png'),
  //       ),
  //     ),
  //   ));
  // }
}
