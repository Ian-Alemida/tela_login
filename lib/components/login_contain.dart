import 'package:flutter/material.dart';
import 'package:tela_login/components/login_validator.dart';

class LoginContain extends StatelessWidget {
   LoginContain({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 280,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.89),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 13,
              offset: const Offset(3, 3), // changes position of shadow
            ),
          ]),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            LoginValidator(),
            ElevatedButton(
              onPressed: () {
                if(_formKey.currentState!.validate()) {

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.black.withOpacity(0.15),
                      content: const Text('Entrando na conta...'),
                    ),
                  );
                }
              },
              child: Container(
                height: 30,
                width: 290,
                alignment: Alignment.center,
                child: const Text(
                  'Login',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
