#Flutter GoHashLogin Package

  Flutter gohashlogin package help to make a login screen and Signup Screen


# Installation
```
1. Add the latest version of package to your pubspec.yaml (and run flutter pub get):
    dependencies:
        gohashlogin: ^0.0.3

2. Import the package and use it in your Flutter App.
    import 'package:gohashlogin/gohashlogin.dart';

```
# Output
![Screenshot from 2023-04-21 17-56-26](https://user-images.githubusercontent.com/99133851/233636302-89532a1f-6ed7-4b85-be0e-10437cab64b8.png)

![Screenshot from 2023-04-21 17-49-26](https://user-images.githubusercontent.com/99133851/233636392-97c56b7c-3940-422d-a911-4bd147083d4d.png)

## Usage
```
GoLogin(
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

```


## Additional information

TODO: Flutter package, which includes pre-built login and signup screens with form validation and background image, is a great example of the power of Flutter. By providing developers with a set of pre-built components, you are helping to speed up the development process and reduce the amount of time and effort required to create custom login and signup screens.



