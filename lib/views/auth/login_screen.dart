import 'package:flutter/material.dart';
import 'package:owala_app/utils/const.dart';
import 'package:owala_app/utils/validators.dart';
import 'package:owala_app/views/auth/components/auth_button.dart';
import 'package:owala_app/views/auth/components/auth_form_field.dart';
import 'package:owala_app/views/auth/components/social_auth_button.dart';

class LoginScreen extends StatelessWidget {
  // untuk memanggil sebuah validator
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 139, 34, 26),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [  
            SizedBox(height: 35),
            Image.asset(
          "assets/images/VW logo.png",
          fit: BoxFit.contain,
          height: 150,
            ),
            Text(
              "Sign In",
              style: TextStyle(
                fontSize: 25,
                color: textColor,
              ),
            ),
            SizedBox(height: 15),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  AuthFormField(
                    controller: _emailController,
                    label: "Email",
                    hintText: "Enter your email",
                    validator: Validators.validateEmail,
                  ),
                  SizedBox(height: 20),
                  AuthFormField(
                    controller: _passwordController,
                    label: "Password",
                    hintText: "Enter your password",
                    obscureText: true,
                    suffixIcon: Icon(
                    Icons.visibility_off,
                    color: Colors.white,
                    ),
                    validator: Validators.validatePassword,
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                     decoration: BoxDecoration(
                    border: Border.fromBorderSide(defaultBorder),
                  ),
                    child: AuthButton(
                      text: "Sign In",
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushReplacementNamed(context, '/catalogue');
                        }
                      },
                      backgroundColor: Colors.transparent,
                      textColor: Colors.white,
                      
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: textColor,
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "or",
                          style: TextStyle(
                            color: textColor
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: textColor,
                        )
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                  decoration: BoxDecoration(
                    border: Border.fromBorderSide(defaultBorder),
                  ),
                    child: SocialAuthButton(
                      assetIcon: "assets/icons/google_logo.svg",
                      label: "Sign in with Google",
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                     decoration: BoxDecoration(
                    border: Border.fromBorderSide(defaultBorder),
                  ),
                    child: SocialAuthButton(
                      assetIcon: "assets/icons/apple_logo.svg",
                      label: "Sign in with Apple",
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: textColor
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(context, '/register'),
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          ),
                      )
                    ],
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}