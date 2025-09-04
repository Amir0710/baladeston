import 'package:flutter/material.dart';
import 'package:baladeston/core/extensions/media_query_extension.dart';

import '../../../core/theme/app_colors.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late final AnimationController _moveCtrl;
  late final AnimationController _scaleCtrl;

  @override
  void initState() {
    super.initState();

    _moveCtrl = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )
      ..repeat(reverse: true);

    _scaleCtrl = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _moveCtrl.dispose();
    _scaleCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopCircles(context),
          Spacer(),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 21),
            child: Column(
              children: [
                Text(
                  'بلدستون \nتمام حرفه ها تو جیبت',
                  textAlign: TextAlign.center,
                  style: Theme
                      .of(context)
                      .textTheme
                      .displaySmall,
                ),
                const SizedBox(height: 16),
                Text(
                  'بلدستون همراه هوشمند توست برای پیدا کردن بهترین مسیر '
                      'و پیشنهادها بر اساس نیاز و موقعیتت',
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                SizedBox(
                  height: 54,
                  width: double.infinity,
                  child: ElevatedButton(

                    onPressed: () {},
                    child: Row(
                      children: [
                        Expanded(child: SizedBox()),
                        Text(
                          'شروع کردن',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ],
                    )

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
            left: -59,
            top: context.screenHeight * 0.15,
            size: 96,
            color: const Color(0xff5C5BFD),
            moveAnim: moveAnim,
            scaleAnim: scaleAnim,
          ),
          _animatedCircle(
            left: context.screenWidth * 0.15,
            top: context.screenHeight * 0.25,
            size: 24,
            color: const Color(0xffFFD037),
            moveAnim: moveAnim,
            scaleAnim: scaleAnim,
          ),
          _animatedCircle(
            top: context.screenHeight * 0.08,
            right: -102,
            size: 184,
            color: const Color(0xFF01B6CB),
            moveAnim: moveAnim,
            scaleAnim: scaleAnim,
          ),
          _animatedCircle(
            left: context.screenWidth * 0.2,
            bottom: context.screenHeight * 0.04,
            size: 188,
            color: const Color(0xffE14B5A),
            moveAnim: moveAnim,
            scaleAnim: scaleAnim,
          ),
          _animatedCircle(
            right: context.screenWidth * 0.1,
            bottom: context.screenHeight * 0.03,
            size: 24,
            color: const Color(0xff2CB4EC),
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
        child: _circle(size, color),
      ),
    );
  }

  Widget _circle(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
