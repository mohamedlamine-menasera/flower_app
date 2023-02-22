import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children:[
              TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "Enter Your Username :",
                  // To delete borders
                  enabledBorder: OutlineInputBorder(
                    borderSide: Divider.createBorderSide(context),
                  ),
                  focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                  filled: true,
                  contentPadding: const EdgeInsets.all(8.0),
                ),

              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "Enter Your Username :",
                  // To delete borders
                  enabledBorder: OutlineInputBorder(
                  borderSide: Divider.createBorderSide(context),
                ),
                  // When u click the border will change to grey
                  focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                  // fillColor: Colors.red, // background color of the textfield
                  filled: true, // active background color of the textfield
                  contentPadding: const EdgeInsets.all(8.0),
                ),

              ),
            ]
          ),
        ),
      ),
    );
  }
}
