import 'dart:io';

import 'package:baladeston/core/constants/add_padding.dart';
import 'package:baladeston/core/extensions/media_query_extension.dart';
import 'package:baladeston/core/theme/app_themes.dart';
import 'package:baladeston/core/widgets/print_circle.dart';
import 'package:baladeston/presentation/pages/signup/signup_rules.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
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

  Uint8List? _pickedBytes;
  String? _pickedPath;

  Future<void> _pickImage() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: false,
      withData: true,
    );

    if (result != null && result.files.isNotEmpty) {
      setState(() {
        _pickedBytes = result.files.single.bytes;
        _pickedPath = result.files.single.path;
      });
    } else {
      setState(() {
        _pickedBytes = null;
        _pickedPath = null;
      });
    }
  }

  void _submitInfo() {
    final firstName = firstNameController.text.trim();
    final lastName = lastNameController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final confirmPassword = confirmPasswordController.text.trim();

    if ([firstName, lastName, email, password, confirmPassword]
        .any((element) => element.isEmpty)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('تمام فیلدها الزامی هستند')),
      );
      return;
    }

    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('رمز عبور و تأیید آن یکسان نیست')),
      );
      return;
    }

    File? localFile;
    Uint8List? bytes;

    if (kIsWeb) {
      bytes = _pickedBytes;
    } else if (_pickedPath != null) {
      localFile = File(_pickedPath!);
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('اطلاعات با موفقیت ارسال شد')),
    );
  }

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
            right: AppConstraints.buttonPadding,
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
              center: Offset(
                  context.screenWidth * 0.95, context.screenHeight * 0.32),
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
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstraints.buttonPadding, vertical: 8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("تکمیل اطلاعات کاربر", style: appTheme.displaySmall),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: GestureDetector(
                        onTap: _pickImage,
                        child: CircleAvatar(
                          radius: 48,
                          backgroundColor: AppTheme.infoColor.withOpacity(0.08),
                          backgroundImage: _pickedBytes != null
                              ? MemoryImage(_pickedBytes!)
                                  as ImageProvider<Object>
                              : _pickedPath != null
                                  ? FileImage(File(_pickedPath!))
                                      as ImageProvider<Object>
                                  : null,
                          child: (_pickedBytes == null && _pickedPath == null)
                              ? Icon(
                                  Icons.camera_alt,
                                  color: AppTheme.infoColor.withOpacity(0.6),
                                )
                              : null,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
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
                      isEnable: false
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
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.zero,
                          child: Checkbox(
                            side: BorderSide(),
                            value: true,
                            onChanged: (value) {},
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            visualDensity: VisualDensity.compact,
                          ),
                        ),

                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "اینجانب ",
                                style: appTheme.labelSmall,
                              ),
                              TextSpan(
                                text: "قوانین",
                                style: Theme.of(context)
                                    .extension<CustomTextStyles>()!
                                    .primary,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => const SignupRules(),
                                      ),
                                    );
                                  },
                              ),
                              TextSpan(
                                text: " را قبول دارم",
                                style: appTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: AppConstraints.elevationButtonHeight,
                      width: AppConstraints.elevationButtonWidth  ,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.infoColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: _submitInfo,
                        child: Row(
                          children: [
                            const Expanded(child: SizedBox()),
                            const Text('ایجاد حساب',
                                style: TextStyle(fontWeight: FontWeight.bold)),
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

  Widget _customTextField({
    required String label,
    required TextEditingController controller,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
    bool isEnable = true ,
  }) {
    return TextField(
      enabled: isEnable ,
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
