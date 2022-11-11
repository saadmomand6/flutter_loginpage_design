import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Login Page")),
        backgroundColor: Colors.green.shade400,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 180,
            ),
            Center(
              child: Text.rich(
                TextSpan(
                  text: "hello\n",
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Comic Sans MS',
                    color: Colors.green.shade500,
                  ),
                  children: [
                    TextSpan(
                      text: "Saad Khan",
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'Comic Sans MS',
                        fontWeight: FontWeight.w600,
                        color: Colors.green.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                width: 300,
                child: const Center(
                    child: TextField(
                  decoration: InputDecoration(
                      labelText: "Enter Your Email",
                      labelStyle: TextStyle(
                        color: Colors.green,
                      )),
                ))),
            const SizedBox(
              height: 10,
            ),
            Container(
                width: 300,
                child: const Center(
                    child: TextField(
                  decoration: InputDecoration(
                      labelText: "Enter Password",
                      labelStyle: TextStyle(
                        color: Colors.green,
                      )),
                ))),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              child: const Text('Login'),
            ),
            const SizedBox(
              height: 30,
            ),
            Text.rich(
              TextSpan(
                text: "Dont have account? ",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  color: Colors.green.shade500,
                ),
                children: [
                  TextSpan(
                      text: 'Sign Up',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Colors.red,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('you clicked on Sign Up');
                        })
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text.rich(
              TextSpan(
                  text: 'I ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Roboto',
                    color: Colors.green.shade700,
                  ),
                  children: const [
                    WidgetSpan(
                      child: Icon(
                        Icons.favorite_rounded,
                        color: Colors.green,
                      ),
                    ),
                    TextSpan(text: ' Flutter')
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
