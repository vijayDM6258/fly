import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get ats => TextStyle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff880E4F),
          title: Text(
            "chat Together",
            style: ats,
          ),
        ),
        body: Column(
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(10),
                  elevation: 10,
                  // color: Colors.red,
                  child: Text("hello"),
                );
              },
              shrinkWrap: true,
              padding: EdgeInsets.all(10),
            )
          ],
        ));
  }
}
