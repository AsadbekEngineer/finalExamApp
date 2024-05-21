import 'package:exam_app_final/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String? emailError;
  String? passwordError;
  bool hidePassword = true;

  void login(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    if (email.isEmpty) {
      emailError = "Email kiriting";
    } else if (!email.contains("@")) {
      emailError = "Email xato, boshqatdan kiriting";
    } else {
      emailError = null;
    }

    if (password.isEmpty) {
      passwordError = 'Parol kiriting!';
    } else if (password.length < 8 ){
    passwordError = 'Not enough characters!';
    } else {
    passwordError = null;
    }

    if (emailError == null && passwordError == null) {
      // Navigate to HomePage
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }

    setState(() {});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.black,
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        child:  Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Email Address", style: TextStyle(color: Colors.white),),
              SizedBox(height: 5,),
              TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email', iconColor: Colors.white,
                  hintText: 'Email', suffixIconColor: Colors.white,
                  errorText: emailError,
                ),
              ),
              SizedBox(height: 10,),

              Text("Password", style: TextStyle(color: Colors.white),),
              SizedBox(height: 7,),
              TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                controller: passwordController,
                obscureText: hidePassword,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: IconButton(
                    onPressed: () {
                      hidePassword = !hidePassword;
                      setState(() {});
                    },
                    icon: Icon(hidePassword
                        ? CupertinoIcons.eye_slash
                        : CupertinoIcons.eye),
                  ),
                  labelText: "Parol",
                  hintText: "Parol",
                  errorText: passwordError,
                ),
                onSubmitted: (value) {
                  login();
                },
              ),

              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreenAccent,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text("Sign In"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
