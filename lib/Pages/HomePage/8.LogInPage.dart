import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '1.HomePage.dart';
import '2.MainHomeBody.dart';

class LogInPage extends StatelessWidget {
  final GoogleSignInAccount user;

  const LogInPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logged In'),
        actions: [
          TextButton(
            onPressed: () async {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const MainHomeBody()),
              );
            },
            child: const Text('Log Out'),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Profile'),
            const SizedBox(
              height: 25,
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(user.photoUrl!),
            ),
            const SizedBox(
              height: 8,
            ),
            Text('Name: ' + user.displayName!)
          ],
        ),
      ),
    );
  }
}
