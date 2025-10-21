import 'package:baladeston/presentation/providers/verify_cubit/verify_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage>
    with TickerProviderStateMixin {
  final phoneController = TextEditingController();
  final codeController = TextEditingController();
  late final VerifyCubit cubit;

  late AnimationController slideController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    cubit = GetIt.instance<VerifyCubit>();

    slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 650),
    );
    slideAnimation = Tween<Offset>(
      begin: const Offset(1, 0), // از راست به چپ اسلاید می‌شود (RTL خیال‌انگیز)
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: slideController, curve: Curves.easeOutCubic));
  }

  @override
  void dispose() {
    slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: const Color(0xFFF8F8F8),
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              'اعتبارسنجی شماره همراه',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
            ),
            centerTitle: true,
          ),
          body: BlocConsumer<VerifyCubit, VerifyState>(
            listener: (context, state) async {
              state.whenOrNull(
                success: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("message")));
                },
                codeSent: () async {
                  await Future.delayed(const Duration(milliseconds: 400));
                  slideController.forward();
                },
                  failure: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('تأیید با موفقیت انجام شد ✅')),
                  );
                },
              );
            },
            builder: (context, state) {
              final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);
              final isCodeSent = state.maybeWhen(
                codeSent: () => true,
                resendSuccess: () => true,
                orElse: () => false,
              );

              return Stack(
                children: [
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: isLoading
                        ? const Center(
                      child: _LoadingOverlay(),
                    )
                        : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                      child: SlideTransition(
                        position: isCodeSent ? slideAnimation : Tween<Offset>(
                          begin: Offset.zero,
                          end: const Offset(-1, 0),
                        ).animate(CurvedAnimation(parent: slideController, curve: Curves.easeIn)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 600),
                              switchInCurve: Curves.easeOutCubic,
                              switchOutCurve: Curves.easeInCubic,
                              child: isCodeSent
                                  ? _buildCodeField()
                                  : _buildPhoneField(),
                            ),
                            const SizedBox(height: 24),
                            ElevatedButton(
                              onPressed: isLoading
                                  ? null
                                  : () {
                                if (!isCodeSent) {
                                  cubit.sendCode(phoneController.text.trim());
                                } else {
                                  cubit.checkCode(
                                    phone: phoneController.text.trim(),
                                    code: codeController.text.trim(),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal,
                                foregroundColor: Colors.white,
                                minimumSize: const Size(double.infinity, 48),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                !isCodeSent ? 'ارسال کد تأیید' : 'تأیید کد',
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            if (isCodeSent) ...[
                              const SizedBox(height: 12),
                              TextButton(
                                onPressed: () =>
                                    cubit.resendCode(phoneController.text.trim()),
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
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildPhoneField() {
    return TextField(
      key: const ValueKey('phoneField'),
      controller: phoneController,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: 'شماره همراه',
        hintText: 'مثلاً 09123456789',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

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
}

// 🌊 لودینگ خاص میان‌صفحه
class _LoadingOverlay extends StatelessWidget {
  const _LoadingOverlay();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 90,
            width: 90,
            child: CircularProgressIndicator(
              strokeWidth: 6,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
            ),
          ),
          const Text(
            'در حال ارسال...',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
              // fontWeight: FWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
