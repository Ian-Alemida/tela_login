import 'package:flutter/material.dart';

class LoginValidator extends StatefulWidget {
  const LoginValidator({Key? key}) : super(key: key);

  @override
  State<LoginValidator> createState() => _LoginValidatorState();
}

class _LoginValidatorState extends State<LoginValidator> {
  TextEditingController passwordController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  final emailValidator = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  bool emailvalidation(String? value) {
    if (value!.isEmpty || !emailValidator.hasMatch(value)) {
      return true;
    }
    return false;
  }

  bool passwordValidation(String? value) {
    if (value!.isEmpty || value.length > 20 || value.length < 8) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding:
            const EdgeInsets.only(top: 40, bottom: 10, right: 30, left: 30),
        child: TextFormField(
          validator: (value) {
            if (emailvalidation(value)) {
              return 'invalid email';
            }
            return null;
          },
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Email adress',
            fillColor: Colors.white,
            filled: true,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
            right: 30, left: 30, top: 0, bottom: 12),
        child: TextFormField(
          validator: (value) {
            if (passwordValidation(value)){
              return 'password must contain between 8 and 20 characters';
            }
            return null;
          },
          controller: passwordController,
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Password',
            fillColor: Colors.white,
            filled: true,
          ),
        ),
      ),
    ]);
  }
}
