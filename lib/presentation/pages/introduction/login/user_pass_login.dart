import 'package:baladeston/core/constants/add_padding.dart';
import 'package:flutter/cupertino.dart';
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
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.buttonPadding , vertical: 8),
        child: Column(
          children: [
            Text(
              "ورود به حساب",
              style: appTheme.displaySmall,
            )
          ],
        ),
      )),
    );
  }
}
