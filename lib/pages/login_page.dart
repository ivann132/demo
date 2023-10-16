import 'package:demo/components/my_button.dart';
import 'package:demo/components/my_textfield.dart';
import 'package:demo/pages/dashboard1.dart';
// import 'package:demo/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';


class Loginpage extends StatelessWidget {
  Loginpage({super.key});

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),

            // logo
            const Icon(
              Icons.person,
              size: 100,
            ),

            const SizedBox(height: 30),

            // welcome back, you've been missed!
            const Text(
              'welcome to Diet Monitoring',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            // username textfield
            MytextField(
              controller: usernameController,
              hintText: 'Masukkan Username',
              obscureText: false,
            ),

            const SizedBox(height: 10),

            // password texttfield
            MytextField(
              controller: passwordController,
              hintText: 'Choose a password',
              obscureText: true,
            ),

            const SizedBox(height: 10),

            // forgot password?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 5),

            // sign in button
            MyButton(
              onPressed: () {
                Get.to(const MakeDashboardItems());
               },
            ),

            const SizedBox(height: 15),
            // or continue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.2,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or Continue With',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.2,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),
            // google sign in buttons
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // google
                IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.google))
                // SquareTile(imagePath: 'lib/images/logo_google_icon.png')
              ],
            ),

            const SizedBox(height: 15),

            // not a members? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  ' Register now',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
