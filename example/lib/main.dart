import 'package:flutter/material.dart';
import 'package:gohashlogin/gohashlogin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const DataPage());
  }
}

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoLogin(
        showAppBar: true,
        appbartitle: "Login",
        appBarTitleisCenter: true,
        useBackgroundImage: true,
        backgroundImage: "assets/background.jpg",
        textFormField: true,
        labelText: const ["Email", "Password"],
        isObscure: true,
        sizedBox: const SizedBox(
          height: 60.0,
        ),
        decoration: [
          InputDecoration(
            labelText: "Email",
            hintText: "Enter Email",
            prefixIcon: const Align(
              widthFactor: 1.0,
              child: Icon(Icons.email),
            ),
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
            contentPadding: const EdgeInsets.all(16),
            filled: true,
          ),
        ],
        textField: 2,
        textController: [
          emailController,
          passwordController,
        ],
        showLoginButton: true,
        loginButtonTitle: "Login",
        showForgotButton: true,
        buttonColor: Colors.blue,
        onLoginPressed: () {},
        showOngoLogin: true,
        child: const Text.rich(
          TextSpan(
            text: "Don't have an Account?",
            style: TextStyle(fontSize: 20),
            children: [
              TextSpan(
                  text: ' Signup',
                  style: TextStyle(fontSize: 22, color: Colors.blue))
            ],
          ),
        ),
        ongoLoginPressed: () {},
        onForgotPressed: () {},
      ),
    );
  }
}
