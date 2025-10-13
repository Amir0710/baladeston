import 'dart:async';
import 'package:baladeston/presentation/pages/signup/complete_user_information.dart';
import 'package:baladeston/presentation/providers/verify_cubit/verify_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';


class Verify extends StatefulWidget {
  final String phoneNumber;

  const Verify({super.key, required this.phoneNumber});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  late TextEditingController _codeController;
  Timer? _timer;
  int _secondsRemaining = 60;
  bool _resendEnabled = false;

  @override
  void initState() {
    super.initState();
    _codeController = TextEditingController();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _codeController.dispose();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() => _secondsRemaining--);
      } else {
        setState(() {
          _resendEnabled = true;
        });
        timer.cancel();
      }
    });
  }

  void _onVerifyPressed(BuildContext context) {
    final code = _codeController.text.trim();
    if (code.length != 4) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('کد باید ۴ رقم باشد')),
      );
      return;
    }

    context.read<VerifyCubit>().verifyCode(widget.phoneNumber, code);
  }

  void _onResendCode(BuildContext context) {
    context.read<VerifyCubit>().resendCode(widget.phoneNumber);
    setState(() {
      _secondsRemaining = 60;
      _resendEnabled = false;
    });
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final isRTL = Directionality.of(context) == TextDirection.rtl;

    return
      BlocListener<VerifyCubit, VerifyState>(
        listener: (context, state) {
          state.whenOrNull(
            initial: () {
              // وضعیت اولیه - مثلاً پاک کردن اینپوت یا چیزی خاص
              debugPrint('State: initial');
            },
            loading: () {
              // وضعیت در حال بارگذاری
              debugPrint('State: loading');
            },
            codeSent: () {
              debugPrint('State: codeSent');
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('کد ارسال شد')),
              );
            },
            success: () {
              // وقتی کد درست بود، برو مرحله بعد
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CompleteUserInformation(
                    // phoneNumber: widget.phoneNumber,
                  ),
                ),
              );
            },
            failure: (message) {
              // وقتی خطا وجود داره
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
            resendSuccess: () {
              // وقتی ارسال مجدد موفق بود
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('کد مجدداً ارسال شد')),
              );
            },
          );
        },
        child:
      Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Positioned(
                  top: -40,
                  right: isRTL ? -30 : null,
                  left: isRTL ? null : -30,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: -20,
                  left: isRTL ? -40 : null,
                  right: isRTL ? null : -40,
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  'تأیید شماره تلفن',

                ),
              ],
            ),

            Text(
              'کد ارسال‌شده به شماره ${widget.phoneNumber} را وارد کنید',
              textAlign: TextAlign.center,
              ),



            SizedBox(
              width: 160,
              child: TextField(
                controller: _codeController,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [LengthLimitingTextInputFormatter(4)],
                decoration: InputDecoration(
                  hintText: '••••',
                  hintStyle: const TextStyle(letterSpacing: 6),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),


            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 64, vertical: 16),
              ),
              onPressed: () => _onVerifyPressed(context),
              child: Text(
                'تأیید',
              ),
            ),


            TextButton(
              onPressed: _resendEnabled
                  ? () => _onResendCode(context)
                  : null,
              child: Text(
                _resendEnabled
                    ? 'ارسال مجدد کد'
                    : 'ارسال مجدد کد (${_secondsRemaining}s)',

              ),
            ),
          ],
        ),
      ),
    );
  }
}
