import 'package:baladeston/application/providers/verification_cubit/verification_cubit.dart';
import 'package:baladeston/core/extensions/media_query_extension.dart';
import 'package:baladeston/core/theme/app_themes.dart';
import 'package:baladeston/presentation/widgets/print_circle.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class VerificationPage extends StatefulWidget {
  final String phone ;

  const VerificationPage({super.key, required this.phone});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage>
    with TickerProviderStateMixin {
  final phoneController = TextEditingController();
  final codeController = TextEditingController();
  late final VerificationCubit cubit;

  late AnimationController slideController;
  late Animation<Offset> slideAnimation;

  bool _isLoading = false;
  bool _isCodeSent = false;

  @override
  void initState() {
    super.initState();
    cubit = GetIt.instance<VerificationCubit>();

    slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    slideAnimation = Tween<Offset>(
      begin: const Offset(1, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: slideController, curve: Curves.easeOutCubic),
    );
  }

  @override
  void dispose() {
    slideController.dispose();
    phoneController.dispose();
    codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('اعتبارسنجی شماره همراه'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ..._buildBackgroundDots(context),
            SingleChildScrollView(
              padding:
              const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (_isLoading)
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: _SmoothLoading(),
                    ),

                  AnimatedBuilder(
                    animation: slideController,
                    builder: (context, _) {
                      return SlideTransition(
                        position: _isCodeSent
                            ? slideAnimation
                            : Tween<Offset>(
                          begin: Offset.zero,
                          end: const Offset(-1, 0),
                        ).animate(
                          CurvedAnimation(
                            parent: slideController,
                            curve: Curves.easeOutCubic,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 400),
                              switchInCurve: Curves.easeOut,
                              switchOutCurve: Curves.easeIn,
                              child: _isCodeSent
                                  ? _buildCodeField()
                                  : _buildPhoneField(),
                            ),
                            const SizedBox(height: 28),
                            SizedBox(
                              height: 52,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: _isLoading
                                    ? null
                                    : () async {
                                  if (!_isCodeSent) {
                                    // 👇 حالت ارسال کد نمایشی
                                    setState(() => _isLoading = true);
                                    await Future.delayed(
                                        const Duration(milliseconds: 900));
                                    setState(() {
                                      _isLoading = false;
                                      _isCodeSent = true;
                                    });
                                    slideController.forward();
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text('تأیید انجام شد ✅'),
                                    ));
                                  }
                                },
                                child: Text(
                                  !_isCodeSent
                                      ? 'ارسال کد تأیید'
                                      : 'تأیید کد',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            if (_isCodeSent) ...[
                              const SizedBox(height: 14),
                              TextButton(
                                onPressed: () async {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content:
                                        Text('کد دوباره ارسال شد 📩')),
                                  );
                                },
                                child: const Text(
                                  'ارسال مجدد کد',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🔸 فیلد وارد کردن شماره همراه
  Widget _buildPhoneField() {
    return TextField(
      key: const ValueKey('phoneField'),
      controller: phoneController,
      keyboardType: TextInputType.phone,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        labelText: 'شماره همراه',
        hintText: 'مثلاً 09123456789',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  // 🔸 فیلد وارد کردن کد تأیید
  Widget _buildCodeField() {
    return TextField(
      key: const ValueKey('codeField'),
      controller: codeController,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: 'کد تأیید',
        hintText: 'کد پیامک را وارد کنید',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  // 🔹 دایره‌های پس‌زمینه
  List<Widget> _buildBackgroundDots(BuildContext context) => [
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
  ];
}

// 🔹 ویجت اسپینر نرم بارگذاری
class _SmoothLoading extends StatelessWidget {
  const _SmoothLoading();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: CircularProgressIndicator(
              strokeWidth: 6,
              valueColor: const AlwaysStoppedAnimation(Colors.teal),
              backgroundColor: Colors.teal.withOpacity(0.15),
            ),
          ),
          const Text(
            'در حال ارسال...',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
