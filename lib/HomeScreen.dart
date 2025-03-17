import 'package:flosy/SignUpScreen.dart';
import 'package:flutter/material.dart';

import 'LogInScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png", width: 280),
            Text(
              "Smartest money managing app",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  );
                },
                child: Text(
                  "REGISTER",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade700,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInScreen(),
                      ));
                },
                child: const Text("SIGN IN",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 20),
            TextButton.icon(
              onPressed: () {},
              label: const Text(
                'Log In With Google',
                style: TextStyle(color: Colors.white),
              ),
              icon: Image.asset(
                'assets/images/GoogleIcon.png', // Add Google icon to assets
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
