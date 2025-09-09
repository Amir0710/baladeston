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
                center: Offset(30, 30),
                layer: 4,
                padding: 10,
                width: 3,
                style: PaintingStyle.stroke,
                radius: 250,
              ),
            ),
            PrintCircle(
              incremental: 10,
              color: AppColors.partColorsLight[4],
              center: Offset(35, 110),
              layer: 4,
              padding: 10,
              width: 3,
              style: PaintingStyle.fill,
              radius: 12,
            ),
            PrintCircle(
              incremental: 10,
              color: AppColors.partColorsLight[3],
              center: Offset(35, 110),
              layer: 4,
              padding: 10,
              width: 3,
              style: PaintingStyle.fill,
              radius: 12,
            ),
            Positioned(
              left: 4,
              top: 100,
              child: PrintCircle(
                incremental: 10,
                color: AppColors.partColorsLight[4],
                center: Offset(35, 110),
                layer: 4,
                padding: 10,
                width: 3,
                style: PaintingStyle.fill,
                radius: 12,
              ),
            ),
            Positioned(
              left: 4,
              top: 100,
              child: PrintCircle(
                incremental: 10,
                color: AppColors.partColorsLight[4],
                center: Offset(35, 110),
                layer: 4,
                padding: 10,
                width: 3,
                style: PaintingStyle.fill,
                radius: 12,
              ),
            ),

            Expanded(
              child: Column(
                children: [
                  Text(""),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
