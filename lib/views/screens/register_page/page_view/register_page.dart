import 'package:flutter/material.dart';
import 'package:fly/utils/mybutoon.dart';
import 'package:fly/utils/textfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailconntroller = TextEditingController();
  final passwordconntroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage("assets/images/s_g.jpg"),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo

              SizedBox(
                height: 150,
              ),
              // welcome msg
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Lets create account",
                  style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              // email
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyTextField(
                  Controller: emailconntroller,
                  hintText: "Email or Phone",
                  securetxt: false,
                ),
              ),
              //password
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyTextField(
                  Controller: passwordconntroller,
                  hintText: "Enter the passwrod ",
                  securetxt: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyTextField(
                  Controller: passwordconntroller,
                  hintText: "Confirm password",
                  securetxt: true,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("data"),
              )
              // MyButton(
              //   Txt: "Sign Up",
              //   OnTap: () {
              //     print("submited");
              //   },
              // ),
              //register page if user have no account
            ],
          ),
        ],
      ),
    );
  }
}
