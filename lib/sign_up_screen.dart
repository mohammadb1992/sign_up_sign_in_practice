import 'package:flutter/material.dart';
// import 'package:sign_up_sign_in_practice/color.dart';
import 'package:sign_up_sign_in_practice/widget.dart';
import 'package:sign_up_sign_in_practice/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xFF5C5291),
          Color(0xFF425CB5),
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: screenWidth * 0.25,
                  height: screenHeight * 0.25,
                ),
                MyTextField(
                    controller: emailController,
                    labelText: "Email",
                    haveSuffixIcon: false,
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress),
                const SizedBox(height: 24),
                MyTextField(
                    controller: passwordController,
                    labelText: "Password",
                    haveSuffixIcon: true,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true),
                const SizedBox(height: 10),
                MyTextField(
                    controller: confirmPasswordController,
                    haveSuffixIcon: true,
                    obscureText: true,
                    labelText: "Confirm Password"),
                const SizedBox(height: 10),
                Container(
                  width: screenWidth * 0.23,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange.shade700,
                        Colors.yellowAccent,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(150)),
                        backgroundColor: Colors.transparent,
                      ),
                      onPressed: () {},
                      child: const Text("Sign Up")),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignInScreen();
                      }));
                    },
                    child: const Text("Sign In"),
                  )
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
