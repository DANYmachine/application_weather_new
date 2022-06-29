import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '1.HomePage.dart';
import '7.AuthPage.dart';

class AuthButton extends StatefulWidget {
  const AuthButton({Key? key}) : super(key: key);

  @override
  State<AuthButton> createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Icon(
        CupertinoIcons.person,
        color: buttonColor,
      ),
      onPressed: () async {
        showModalBottomSheet(
          context: context,
          elevation: 10,
          backgroundColor: Colors.transparent,
          builder: (BuildContext context) {
            return const AuthPage();
          },
        );
      },
    );
  }
}
