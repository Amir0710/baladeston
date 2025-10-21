import 'package:baladeston/core/constants/add_padding.dart';
import 'package:baladeston/core/extensions/media_query_extension.dart';
import 'package:baladeston/core/theme/app_themes.dart';
import 'package:baladeston/core/widgets/print_circle.dart';
import 'package:baladeston/presentation/pages/login/user_pass_login.dart';
import 'package:baladeston/presentation/pages/signup/complete_user_information.dart';
import 'package:baladeston/presentation/pages/signup/verify.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class UserPassSignup extends StatefulWidget {
  const UserPassSignup({super.key});

  @override
  State<UserPassSignup> createState() => _UserPassSignupState();
}

class _UserPassSignupState extends State<UserPassSignup> {
  final _phoneController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Padding(
          padding: EdgeInsets.only(
              top: 18, right: AppConstraints.buttonPadding, left: 8),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[3],
              center: Offset(context.screenWidth * 0.72, context.screenHeight * 0.04),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 12,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[0],
              center: Offset(context.screenWidth * 0.35, context.screenHeight * 0.06),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 18,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[5],
              center: Offset(context.screenWidth * 0.87, context.screenHeight * 0.2),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 10,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[2],
              center: Offset(context.screenWidth * 0.5, context.screenHeight * 0.4),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 20,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[1],
              center: Offset(context.screenWidth * 0.8, context.screenHeight * 0.65),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 16,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[4],
              center: Offset(context.screenWidth * 0.08, context.screenHeight * 0.6),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 11,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[5],
              center: Offset(context.screenWidth * 0.4, context.screenHeight * 0.82),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 14,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[0],
              center: Offset(context.screenWidth * 0.25, context.screenHeight * 0.92),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 9,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[3],
              center: Offset(context.screenWidth * 0.95, context.screenHeight * 0.85),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 10,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppConstraints.buttonPadding, vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // عنوان
                    Text(
                      "ثبت نام حساب جدید",
                      style: appTheme.displaySmall,
                    ),
                    const SizedBox(height: 24),
                    Text("نام کاربری", style: appTheme.bodySmall),
                    // const SizedBox(height: 8),
                    TextField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        labelText: "شماره همراه خود را وارد کنید",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppTheme.infoColor.withOpacity(0.1),
                            width: 1.5,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    SizedBox(
                      height: AppConstraints.elevationButtonHeight,
                      width: AppConstraints.elevationButtonWidth  ,
                      child: ElevatedButton(
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => VerificationPage(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            const Expanded(child: SizedBox()),
                            const Text('ایجاد حساب'),
                            const Expanded(
                              child: Align(
                                alignment: AlignmentDirectional.centerEnd,
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // لینک برگشت به ورود
                    Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "اکانت دارید؟ ",
                              style: appTheme.labelSmall,
                            ),
                            TextSpan(
                              text: "وارد",
                              style: Theme.of(context)
                                  .extension<CustomTextStyles>()!
                                  .primary,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const UserPassLogin(),
                                    ),
                                  );
                                },
                            ),
                            TextSpan(
                              text: " شوید",
                              style: appTheme.labelSmall,
                            ),
                          ],
                        ),
                      ),
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
