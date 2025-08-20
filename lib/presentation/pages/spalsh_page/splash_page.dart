import 'package:baladeston/core/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: context.screenHeight * 0.7,
            child: Stack(
              children: [
                Positioned(
                  left: -59,
                  top: context.screenHeight * 0.1,
                  child: Container(
                    width: 96,
                    height: 96,
                    decoration: const BoxDecoration(
                      color: Color(0xff5C5BFD),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

                Positioned(
                  left: context.screenWidth * 0.15,
                  top: context.screenHeight * 0.2,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      color: Color(0xffFFD037),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

                Positioned(
                  right: -102,
                  top: context.screenHeight * 0.04,
                  child: Container(
                    width: 184,
                    height: 184,
                    decoration: const BoxDecoration(
                      color: Color(0xffFFD037),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

                // دایره قرمز بزرگ وسط پایین
                Positioned(
                  left: context.screenWidth * 0.2,
                  bottom: context.screenHeight * 0.1,
                  child: Container(
                    width: 188,
                    height: 188,
                    decoration: const BoxDecoration(
                      color: Color(0xffE14B5A),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

                Positioned(
                  right: context.screenWidth * 0.1,
                  bottom: context.screenHeight * 0.39,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      color: Color(0xff2CB4EC),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore magna aliqua',
            style: GoogleFonts.aBeeZee(fontSize: 28),
          )
        ],
      ),
    );
  }
}
