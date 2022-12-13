import 'package:flutter/material.dart';
import 'package:tela_login/components/login_contain.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/Image/background.png"),
            fit: BoxFit.cover),
      ),
      child: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 76.0),
                  child: Icon(
                    Icons.email_outlined,
                    color: Colors.white70,
                    size: 53,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 22, bottom: 22),
              child: Text(
                'Welcome back!',
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
            ),
            LoginContain(),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: SizedBox(
                width: 375,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'forgot your password?',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'dont have on accont? get start',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
