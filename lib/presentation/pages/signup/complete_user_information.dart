import 'package:baladeston/core/constants/add_padding.dart';
import 'package:baladeston/core/extensions/media_query_extension.dart';
import 'package:baladeston/core/theme/app_themes.dart';
import 'package:baladeston/core/widgets/print_circle.dart';
import 'package:flutter/material.dart';

class CompleteUserInformation extends StatefulWidget {
  const CompleteUserInformation({super.key});

  @override
  State<CompleteUserInformation> createState() =>
      _CompleteUserInformationState();
}

class _CompleteUserInformationState extends State<CompleteUserInformation> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
  TextEditingController();

  String? pickedImagePath;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Padding(
          padding: EdgeInsets.only(
            top: 18,
            bottom: 0,
            right: AppPadding.buttonPadding,
            left: 8,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            /// ✅ پس‌زمینه‌ی دایره‌های نامنظم مثل صفحه‌ی ورود
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[0],
              center: Offset(
                  context.screenWidth * 0.42, context.screenHeight * 0.08),
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
                  context.screenWidth * 0.18, context.screenHeight * 0.28),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 8,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[2],
              center:
              Offset(context.screenWidth * 0.95, context.screenHeight * 0.32),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 12,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[3],
              center: Offset(
                  context.screenWidth * 0.77, context.screenHeight * 0.68),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 18,
            ),
            PrintCircle(
              incremental: 0,
              color: AppTheme.partColorsList[1],
              center: Offset(
                  context.screenWidth * 0.25, context.screenHeight * 0.75),
              layer: 1,
              padding: 0,
              width: 0,
              style: PaintingStyle.fill,
              radius: 18,
            ),

            /// ✅ محتوای فرم
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppPadding.buttonPadding, vertical: 8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "تکمیل اطلاعات کاربر",
                      style: appTheme.displaySmall,
                    ),
                    const SizedBox(height: 32),

                    /// تصویر پروفایل
                    Center(
                      child: GestureDetector(
                        onTap: () async {
                          setState(() {
                            pickedImagePath = 'demo';
                          });
                        },
                        child: CircleAvatar(
                          radius: 48,
                          backgroundColor:
                          AppTheme.infoColor.withOpacity(0.1),
                          backgroundImage: pickedImagePath != null
                              ? const AssetImage('assets/demo_profile.png')
                              : null,
                          child: pickedImagePath == null
                              ? Icon(Icons.camera_alt,
                              color: AppTheme.infoColor.withOpacity(0.6))
                              : null,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),

                    /// ردیف نام و نام خانوادگی
                    Row(
                      children: [
                        Expanded(
                          child: _customTextField(
                            label: 'نام',
                            controller: firstNameController,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: _customTextField(
                            label: 'نام خانوادگی',
                            controller: lastNameController,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    _customTextField(
                      label: 'ایمیل',
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),

                    _customTextField(
                      label: 'رمز عبور',
                      controller: passwordController,
                      obscureText: true,
                    ),
                    const SizedBox(height: 16),

                    _customTextField(
                      label: 'تأیید رمز عبور',
                      controller: confirmPasswordController,
                      obscureText: true,
                    ),
                    const SizedBox(height: 32),

                    /// دکمه ایجاد حساب
                    SizedBox(
                      height: 54,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.infoColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Expanded(child: SizedBox()),
                            const Text(
                              'ایجاد حساب',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional.centerEnd,
                                child: Icon(Icons.check_circle_outline),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// فیلدهای ورودی با تم مشابه صفحات ورود
  Widget _customTextField({
    required String label,
    required TextEditingController controller,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: Theme.of(context).textTheme.bodySmall,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppTheme.infoColor.withOpacity(0.1),
            width: 1.5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
