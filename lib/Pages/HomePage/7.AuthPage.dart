import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Services/Provider/google_sign_in.dart';
import '1.HomePage.dart';
import '8.LogInPage.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlueAccent,
      borderRadius: BorderRadius.circular(30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              icon: const FaIcon(
                FontAwesomeIcons.google,
                color: Colors.red,
              ),
              onPressed: () async {
                await _signIn();
              },
              label: Text(
                'Sign In with Google',
                style: TextStyle(
                  color: backgroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _signIn() async {
    final _user = await GoogleSignInApi.login();
    if (_user == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error'),
        ),
      );
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return LogInPage(user: _user);
          },
        ),
      );
    }
  }
}
