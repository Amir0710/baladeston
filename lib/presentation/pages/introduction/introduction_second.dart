import 'dart:math';

import 'package:baladeston/core/constants/add_padding.dart';
import 'package:baladeston/core/extensions/media_query_extension.dart';
import 'package:baladeston/core/theme/app_themes.dart';
import 'package:baladeston/core/widgets/print_circle.dart';
import 'package:baladeston/presentation/pages/login/user_pass_login.dart';
import 'package:flutter/material.dart';

class IntroductionSecond extends StatelessWidget {
  const IntroductionSecond({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme appTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: context.screenHeight,
              width: context.screenWidth,
              child: PrintCircle(
                  incremental: 10,
                  color: AppTheme.secondaryColor.withValues(alpha: 0.1),
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
              color: AppTheme.partColorsList[4],
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
              color: AppTheme.partColorsList[3],
              center: Offset(-4, context.screenHeight * 0.6),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 18,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[2],
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
              color: AppTheme.partColorsList[1],
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
              color: AppTheme.partColorsList[0],
              center: Offset(
                  context.screenWidth * 0.9, context.screenHeight * 0.25),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 18,
            ),
            Positioned.fill(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppConstraints.mediumTextPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("skip", style: appTheme.labelMedium),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppConstraints.mediumTextPadding),
                    child: Text("introduction", style: appTheme.displayMedium),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppConstraints.mediumTextPadding),
                    child: Text(
                      "This is a place where you acquire new skills and grow...",
                      style: appTheme.labelMedium,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppConstraints.buttonPadding),
                    child: SizedBox(
                      height: AppConstraints.elevationButtonHeight,
                      width: AppConstraints.elevationButtonWidth,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => const UserPassLogin()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            SizedBox(width: 24), // برای تعادل سمت چپ (در برا آیکون)
                            Text('شروع کردن', textAlign: TextAlign.center),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),

                    ),
                  ),
                  const SizedBox(height: 38),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
