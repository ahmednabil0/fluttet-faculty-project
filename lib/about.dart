import 'package:flutter/material.dart';

import 'login.dart';

class AboutScrean extends StatelessWidget {
  const AboutScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Hero(
              tag: 'id1',
              child: Icon(
                Icons.school_rounded,
                color: Colors.red,
                size: 150,
              ),
            ),
            const Text(
              'FLUTTER  PROJECT',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                ''' 
                1-ahmed gamal             sec1
                2-ahmed nabil               sec1
                3- ibrahim ayman          sec1
                4-ibrahim hamada         sec1
                5- abdulrahman maher sec3 ''',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.login_rounded,
                color: Colors.white,
              ),
              label: const Text(
                'GO TO LOGIN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
