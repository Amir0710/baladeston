import 'package:baladeston/core/constants/add_padding.dart';
import 'package:baladeston/core/extensions/media_query_extension.dart';
import 'package:baladeston/core/theme/app_themes.dart';
import 'package:baladeston/core/widgets/print_circle.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class UserPassLogin extends StatefulWidget {
  const UserPassLogin({super.key});

  @override
  State<UserPassLogin> createState() => _UserPassLoginState();
}

class _UserPassLoginState extends State<UserPassLogin> {
  @override
  Widget build(BuildContext context) {
    TextTheme appTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Padding(
          padding: EdgeInsets.only(
              top: 18, bottom: 0, right: AppPadding.buttonPadding, left: 8),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[0],
              center: Offset(
                  context.screenWidth * 0.45, context.screenHeight * 0.07),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 16,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[4],
              center: Offset(
                  context.screenWidth * 0.25, context.screenHeight * 0.3),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 8,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[2],
              center: Offset(-4, context.screenHeight * 0.6),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 18,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[3],
              center: Offset(
                  context.screenWidth * 0.85, context.screenHeight * 0.5),
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
                  Offset(context.screenWidth * 0.6, context.screenHeight * 0.8),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 18,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[5],
              center: Offset(
                  context.screenWidth * 0.9, context.screenHeight * 0.19),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 18,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppPadding.buttonPadding, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ورود به حساب",
                    style: appTheme.displaySmall,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "نام کاربری",
                    style: appTheme.bodySmall,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "شماره همراه خود را وارد کنید",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppTheme.infoColor.withOpacity(0.1),
                            width: 1.5),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text("رمز ورود"),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "رمز عبور خود را وارد کنید ",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppTheme.infoColor.withOpacity(0.1),
                            width: 1.5),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 54,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return UserPassLogin();
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
                              child: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "حساب کاربری ندارید؟ ",
                          style: appTheme.labelSmall,
                        ),
                        TextSpan(
                          text: "ثبت نام",
                          style: Theme.of(context)
                              .extension<CustomTextStyles>()!
                              .primary,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                            },
                        ),
                        TextSpan(
                          text: " کنید",
                          style: appTheme.labelSmall,
                        ),
                      ],
                    ),
                    // textDirection: TextDirection.rtl, // Ensures correct RTL rendering
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
