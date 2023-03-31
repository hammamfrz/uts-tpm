import 'package:flutter/material.dart';
import 'halaman_profile.dart';
import 'main.dart';

class HalamanLogin extends StatelessWidget {
  const HalamanLogin({super.key});

  @override
  Widget build(BuildContext context) {
    String username = "";
    String password = "";
    var usernameController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/flutter.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 80,
            ),
            TextField(
              onChanged: (value) => username = value,
              controller: usernameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: 'Username',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => password = value,
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: 'Password',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                String message = "";
                if (username == "123200062" && password == "hammam") {
                  message = "Login Success";
                } else {
                  message = "Login Failed";
                }

                SnackBar snackBar = SnackBar(
                  content: Text(message),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);

                //if success navigate to profile page
                if (message == "Login Success") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavigation()
                    ),
                  );
                }
              },
              child: const Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}