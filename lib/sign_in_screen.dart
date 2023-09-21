import 'package:flutter/material.dart';
// import 'package:sign_up_sign_in_practice/color.dart';
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
                child: Center(
              child: SizedBox(
                width: screenWidth * 0.23,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.end,
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
                      Row(
                        children: [
                          TextButton(
                            child: const Text("Forgot Password?",
                                style: TextStyle(color: Colors.white)),
                            onPressed: () {},
                          )
                        ],
                      ),
                      Container(
                        width: screenWidth * 0.23,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
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
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",
                                style: TextStyle(
                                  color: Colors.blue.shade300,
                                )),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (cotext) {
                                  return const SignUpScreen();
                                }));
                              },
                              child: const Text("Sign Up",
                                  style: TextStyle(
                                      color: Colors.white,
                                      backgroundColor: Colors.transparent)),
                            )
                          ]),
                    ]),
              ),
            )),
          )),
    );
  }
}
