import 'package:flutter/material.dart';
import 'package:fly/utils/textfield.dart';
import 'package:fly/views/screens/home_page/page_view/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailconntroller = TextEditingController();
  final passwordconntroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff415093),
      body: Stack(
        children: [
          // Container(
          //   color: Color(0xff415093),
          //   decoration: BoxDecoration(
          //     image: DecorationImage(fit: BoxFit.fitHeight,
          //       image: AssetImage("assets/images/flylogo.jpg"),
          //     ),
          //   ),
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/flylogo.jpg"),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              // welcome msg
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "welcome back to fly chat ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
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
              // MyButton(
              //   Txt: "Log In",
              //   OnTap: () {
              //     print("hello");
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => HomePage(),
              //       ),
              //     );
              //   },
              // ),
              //register page if user have no account
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Text("data"),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "not have an account ? ",
                    ),
                    Text(
                      "Register now ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
