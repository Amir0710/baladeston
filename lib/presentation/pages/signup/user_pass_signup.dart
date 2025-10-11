import 'package:baladeston/core/constants/add_padding.dart';
import 'package:baladeston/core/extensions/media_query_extension.dart';
import 'package:baladeston/core/theme/app_themes.dart';
import 'package:baladeston/core/widgets/print_circle.dart';
import 'package:baladeston/presentation/pages/category/category_pages.dart';
import 'package:baladeston/presentation/pages/login/user_pass_login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class UserPassSignup extends StatefulWidget {
  const UserPassSignup({super.key});

  @override
  State<UserPassSignup> createState() => _UserPassSignupState();
}

class _UserPassSignupState extends State<UserPassSignup> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Padding(
          padding: EdgeInsets.only(
              top: 18, right: AppPadding.buttonPadding, left: 8),
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
              center: Offset(context.screenWidth * 0.35, context.screenHeight * 0.08),
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
              center: Offset(context.screenWidth * 0.5, context.screenHeight * 0.31),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 20,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[1],
              center: Offset(context.screenWidth * 0.9, context.screenHeight * 0.65),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 16,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[4],
              center: Offset(context.screenWidth * 0.08, context.screenHeight * 0.74),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 11,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[5],
              center: Offset(context.screenWidth * 0.55, context.screenHeight * 0.82),
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
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[2],
              center: Offset(context.screenWidth * 0.42, context.screenHeight * 0.38),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 13,
            ),

            // دایره‌های تزئینی پس‌زمینه
            // PrintCircle(
            //   incremental: 0,
            //   color: AppTheme.partColorsList[0],
            //   center: Offset(
            //       context.screenWidth * 0.45, context.screenHeight * 0.07),
            //   layer: 1,
            //   padding: 0,
            //   width: 0,
            //   style: PaintingStyle.fill,
            //   radius: 16,
            // ),
            // PrintCircle(
            //   incremental: 0,
            //   color: AppTheme.partColorsList[4],
            //   center: Offset(
            //       context.screenWidth * 0.25, context.screenHeight * 0.3),
            //   layer: 1,
            //   padding: 0,
            //   width: 0,
            //   style: PaintingStyle.fill,
            //   radius: 8,
            // ),
            // PrintCircle(
            //   incremental: 0,
            //   color: AppTheme.partColorsList[2],
            //   center: Offset(-4, context.screenHeight * 0.6),
            //   layer: 1,
            //   padding: 0,
            //   width: 0,
            //   style: PaintingStyle.fill,
            //   radius: 18,
            // ),
            // PrintCircle(
            //   incremental: 0,
            //   color: AppTheme.partColorsList[3],
            //   center: Offset(
            //       context.screenWidth * 0.85, context.screenHeight * 0.5),
            //   layer: 1,
            //   padding: 0,
            //   width: 0,
            //   style: PaintingStyle.fill,
            //   radius: 14,
            // ),
            // PrintCircle(
            //   incremental: 0,
            //   color: AppTheme.partColorsList[1],
            //   center: Offset(context.screenWidth * 0.6,
            //       context.screenHeight * 0.8),
            //   layer: 1,
            //   padding: 0,
            //   width: 0,
            //   style: PaintingStyle.fill,
            //   radius: 18,
            // ),
            // PrintCircle(
            //   incremental: 0,
            //   color: AppTheme.partColorsList[5],
            //   center: Offset(context.screenWidth * 0.9,
            //       context.screenHeight * 0.19),
            //   layer: 1,
            //   padding: 0,
            //   width: 0,
            //   style: PaintingStyle.fill,
            //   radius: 18,
            // ),

            // محتوا
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.buttonPadding, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // عنوان
                    Text(
                      "ثبت نام حساب جدید",
                      style: appTheme.displaySmall,
                    ),
                    const SizedBox(height: 24),

                    // فیلد نام کاربری
                    Text("نام کاربری", style: appTheme.bodySmall),
                    const SizedBox(height: 8),
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: "شماره همراه یا نام کاربری خود را وارد کنید",
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

                    // رمز عبور
                    Text("رمز عبور", style: appTheme.bodySmall),
                    const SizedBox(height: 8),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "رمز عبور خود را وارد کنید",
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

                    // تأیید رمز عبور
                    Text("تأیید رمز عبور", style: appTheme.bodySmall),
                    const SizedBox(height: 8),
                    TextField(
                      controller: _confirmPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "رمز عبور را دوباره وارد کنید",
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
                    const SizedBox(height: 24),

                    // دکمه ثبت نام
                    SizedBox(
                      height: 54,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // TODO: در اینجا منطق ثبت نام خودت رو (Supabase یا API) اضافه کن
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const CategoryListPage(),
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
                              text: "ورود",
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
                              text: " کنید",
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
