import 'package:flutter/material.dart';
import 'package:owala_app/utils/const.dart';
import 'package:owala_app/utils/validators.dart';
import 'package:owala_app/views/auth/components/auth_button.dart';
import 'package:owala_app/views/auth/components/auth_form_field.dart';

class RegisterScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  RegisterScreen({super.key});

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
              "Register",
              style: TextStyle(
                color: textColor,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 15),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AuthFormField(
                    controller: _nameController,
                    label: "Full Name",
                    hintText: "Enter your full name",
                    validator: Validators.validateFullName,
                  ),
                  SizedBox(height: 20),
                  AuthFormField(
                    controller: _emailController,
                    label: "Email",
                    hintText: "Enter your email",
                    keyboardType: TextInputType.emailAddress,
                    validator: Validators.validateEmail,
                  ),
                  SizedBox(height: 20),
                  AuthFormField(
                    controller: _passwordController,
                    label: "Password",
                    hintText: "Enter your password",
                    obscureText: true,
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Colors.white,
                      ),
                    validator: Validators.validatePassword,
                  ),
                  SizedBox(height: 20),
                  AuthFormField(
                    controller: _confirmPasswordController,
                    label: "Confirm Password",
                    hintText: "Confirm your password",
                    obscureText: true,
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Colors.white,
                      ),
                    validator: (value) => Validators.validateConfirmPassword(
                      value,
                      _passwordController.text
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    decoration: BoxDecoration(
                    border: Border.fromBorderSide(defaultBorder),
                  ),
                    child: AuthButton(
                      text: "Sign Up",
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: textColor
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(context, '/login'),
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white),
                          ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}