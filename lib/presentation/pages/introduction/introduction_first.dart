import 'package:baladeston/core/constants/add_padding.dart';
import 'package:baladeston/core/theme/app_themes.dart';
import 'package:baladeston/core/theme/app_themes.dart';
import 'package:baladeston/core/theme/app_themes.dart';
import 'package:baladeston/core/theme/app_themes.dart';
import 'package:baladeston/core/theme/app_themes.dart';
import 'package:baladeston/core/widgets/print_circle.dart';
import 'package:baladeston/presentation/pages/introduction/introduction_second.dart';
import 'package:flutter/material.dart';
import 'package:baladeston/core/extensions/media_query_extension.dart';

class IntroductionFirst extends StatefulWidget {
  const IntroductionFirst({super.key});

  @override
  State<IntroductionFirst> createState() => _IntroductionFirstState();
}

class _IntroductionFirstState extends State<IntroductionFirst>
    with TickerProviderStateMixin {
  late final AnimationController _moveCtrl;
  late final AnimationController _scaleCtrl;

  @override
  void initState() {
    super.initState();

    _moveCtrl = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat(reverse: true);

    _scaleCtrl = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _moveCtrl.dispose();
    _scaleCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme appTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        children: [
          _buildTopCircles(context),
          Spacer(),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(
                horizontal: AppConstraints.buttonPadding),
            child: Column(
              children: [
                Text(
                  'بلدستون \nتمام حرفه ها تو جیبت',
                  textAlign: TextAlign.center,
                  style: appTheme.displayLarge,
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppConstraints.largeTextPadding),
                  child: Text(
                    'بلدستون همراه هوشمند توست برای پیدا کردن و یادگیری بهترین مسیر '
                    'و پیشنهادها بر اساس نیاز و موقعیتت',
                    style: appTheme.labelSmall,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  height: 54,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return IntroductionSecond();
                        },
                      ));
                    },
                    child: Row(
                      children: [
                        Expanded(child: SizedBox()),
                        Text('شروع کردن'),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional.centerEnd,
                            // وابسته به direction
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 38,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopCircles(BuildContext context) {
    final moveAnim = Tween<double>(begin: 0, end: 20).animate(
      CurvedAnimation(parent: _moveCtrl, curve: Curves.easeInOut),
    );
    final scaleAnim = Tween<double>(begin: 1, end: 1.1).animate(
      CurvedAnimation(parent: _scaleCtrl, curve: Curves.easeInOut),
    );

    return SizedBox(
      height: context.screenHeight * 0.6,
      child: Stack(
        children: [
          _animatedCircle(
            left: context.screenWidth * 0.15,
            top: context.screenHeight * 0.25,
            size: 24,
            color: AppTheme.partColorsList[0],
            moveAnim: moveAnim,
            scaleAnim: scaleAnim,
          ),
          _animatedCircle(
            top: context.screenHeight * 0.08,
            right: -102,
            size: 184,
            color: AppTheme.partColorsList[1],
            moveAnim: moveAnim,
            scaleAnim: scaleAnim,
          ),
          _animatedCircle(
            left: context.screenWidth * 0.2,
            bottom: context.screenHeight * 0.04,
            size: 188,
            color: AppTheme.partColorsList[2],
            moveAnim: moveAnim,
            scaleAnim: scaleAnim,
          ),
          _animatedCircle(
            right: context.screenWidth * 0.1,
            bottom: context.screenHeight * 0.03,
            size: 24,
            color: AppTheme.partColorsList[3],
            moveAnim: moveAnim,
            scaleAnim: scaleAnim,
          ),
          _animatedCircle(
            left: -59,
            top: context.screenHeight * 0.15,
            size: 96,
            color: AppTheme.partColorsList[4],
            moveAnim: moveAnim,
            scaleAnim: scaleAnim,
          ),
        ],
      ),
    );
  }

  Widget _animatedCircle({
    double? left,
    double? top,
    double? right,
    double? bottom,
    required double size,
    required Color color,
    required Animation<double> moveAnim,
    required Animation<double> scaleAnim,
  }) {
    return Positioned(
      left: left,
      top: top != null ? top + moveAnim.value : null,
      right: right,
      bottom: bottom != null ? bottom - moveAnim.value : null,
      child: ScaleTransition(
        scale: scaleAnim,
        child: SizedBox(
          width: size,
          height: size,
          child: PrintCircle(
            center: Offset(size / 2, size / 2),
            padding: 0,
            width: 1,
            layer: 1,
            incremental: 0,
            radius: size / 2,
            color: color,
            style: PaintingStyle.fill,
          ),
        ),
      ),
    );
  }
}
