import 'dart:math';

import 'package:baladeston/core/constants/add_padding.dart';
import 'package:baladeston/core/extensions/media_query_extension.dart';
import 'package:baladeston/core/theme/app_colors.dart';
import 'package:baladeston/core/widgets/print_circle.dart';
import 'package:flutter/material.dart';

class IntroductionSecond extends StatelessWidget {
  const IntroductionSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: context.screenHeight,
              width: context.screenWidth,
              child: PrintCircle(
                  incremental: 10,
                  color: AppColors.secondaryLight.withValues(alpha: 0.1),
                  center: Offset(0, 0),
                  layer: 4,
                  padding: 10,
                  width: 3,
                  style: PaintingStyle.stroke,
                  radius:
                      min(context.screenWidth, context.screenHeight) * 0.75),
            ),
            PrintCircle(
              incremental: 0,
              color: AppColors.partColorsLight[4],
              center:
                  Offset(context.screenWidth * 0.1, context.screenHeight * 0.3),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 12,
            ),
            PrintCircle(
              incremental: 0,
              color: AppColors.partColorsLight[3],
              center: Offset(-4, context.screenHeight * 0.6),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 18,
            ),
            PrintCircle(
              incremental: 0,
              color: AppColors.partColorsLight[2],
              center: Offset(
                  context.screenWidth * 0.85, context.screenHeight * 0.45),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 14,
            ),
            PrintCircle(
              incremental: 0,
              color: AppColors.partColorsLight[1],
              center:
                  Offset(context.screenWidth * 0.4, context.screenHeight * 0.8),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 18,
            ),
            PrintCircle(
              incremental: 0,
              color: AppColors.partColorsLight[0],
              center: Offset(
                  context.screenWidth * 0.9, context.screenHeight * 0.25),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 18,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: AppPadding.left, right: AppPadding.right),
                child: Column(
                  children: [
                    Text("welcome" , ),
                    Text(
                      "This is where you gain new skills and grow.\nWith Baladstone, every day brings you closer to your goals.\nStart now—your future is waiting",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
