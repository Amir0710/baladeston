import 'package:baladeston/core/constants/add_padding.dart';
import 'package:flutter/material.dart';

class SignupRules extends StatelessWidget {
  const SignupRules({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'قوانین ثبت‌نام',
                style: appTheme.displaySmall,
              ),
              Text(
                'قبل از ثبت‌نام لطفاً با دقت قوانین زیر را مطالعه کنید:',
                style: appTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              Text(
                '۱. اطلاعات وارد شده باید واقعی و صحیح باشند.',
                style: appTheme.bodySmall,
              ),
              Text('۲. استفاده از ایمیل معتبر برای تأیید حساب الزامی است.',
                  style: appTheme.bodySmall),
              Text('۳. هر کاربر تنها مجاز به داشتن یک حساب کاربری است.',
                  style: appTheme.bodySmall),
              Text(
                  '۴. رمز عبور باید حداقل شامل ۸ کاراکتر و ترکیبی از حروف و عدد باشد.',
                  style: appTheme.bodySmall),
              Text('۵. در صورت مشاهده تخلف، حساب کاربری ممکن است مسدود شود.',
                  style: appTheme.bodySmall),
              const SizedBox(height: 32),
              SizedBox(
                height: AppConstraints.elevationButtonHeight,
                width: AppConstraints.elevationButtonWidth,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('متوجه شدم'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
