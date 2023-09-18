import 'package:flutter/material.dart';
import 'package:sign_up_sign_in_practice/color.dart';
import 'package:sign_up_sign_in_practice/sign_up_screen.dart';
import 'package:sign_up_sign_in_practice/widget.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
              child: Center(
            child: SizedBox(
              width: 300,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: screenWidth * 0.25,
                      height: screenHeight * 0.25,
                    ),
                    MyTextField(
                      controller: emailController,
                      haveSuffixIcon: false,
                      obscureText: false,
                      labelText: "Email",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 10),
                    MyTextField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      labelText: "Password",
                      haveSuffixIcon: true,
                    ),
                    TextButton(
                      child: const Text("Forgot Password?"),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        child: const Text("Sign In"),
                        onPressed: () {},
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (cotext) {
                            return const SignUpScreen();
                          }));
                        },
                        child: const Text("Sign Up"),
                      )
                    ]),
                  ]),
            ),
          )),
        ));
  }
}
