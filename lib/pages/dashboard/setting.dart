import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 226, 226),
      body: Column(
        children: [
          Expanded(
            child: Center(
                child: Text(
              "Currently No Setting Available",
              style: TextStyle(fontSize: 40),
            )),
          ),
        ],
      ),
    );
  }
}
