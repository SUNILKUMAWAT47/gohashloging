part of gohashlogin;

// ignore: must_be_immutable
class GoLogin extends StatefulWidget {
  final bool showAppBar;
  final bool appBarTitleisCenter;
  String? appbartitle;
  final Color? statusBarColor;
  final Color? appBarColor;
  final Color? buttonTextColor;
  final bool useBackgroundImage;
  final bool useBackgroundColor;
  bool isObscure;
  bool isObscureCP;
  final String? backgroundImage;
  Widget? sizedBox;
  final bool textFormField;
  List<String>? labelText;
  List<String>? hintText;
  final List<IconData>? prefixIcon;
  final Color? fillColor;
  final bool filled;
  final int? textField;
  final List<TextEditingController>? textController;
  List? decoration;
  final VoidCallback onLoginPressed;
  final VoidCallback onAlreadyLoginPressed;
  final VoidCallback onForgotPressed;
  final bool showAlreadyLogin;
  Widget? child;
  final EdgeInsetsGeometry? padding;
  double? buttonWidth;
  double? buttonHeight;
  Widget? style;
  final ElevatedButton;
  final bool showLoginButton;
  String? loginButtonTitle;
  String? forgotButtonTitle;
  final bool showForgotButton;

  GoLogin({
    super.key,
    this.showAppBar = false,
    this.appBarTitleisCenter = false,
    this.appbartitle,
    this.statusBarColor,
    this.appBarColor,
    this.buttonTextColor,
    this.useBackgroundImage = false,
    this.useBackgroundColor = false,
    this.isObscure = false,
    this.isObscureCP = false,
    this.backgroundImage,
    this.sizedBox,
    this.textFormField = false,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.textField,
    this.fillColor,
    this.filled = false,
    this.textController,
    this.decoration,
    required this.onLoginPressed,
    required this.onAlreadyLoginPressed,
    required this.onForgotPressed,
    this.showAlreadyLogin = false,
    this.child,
    this.padding,
    this.buttonWidth,
    this.buttonHeight,
    this.style,
    this.ElevatedButton,
    this.showLoginButton = false,
    this.loginButtonTitle,
    this.forgotButtonTitle,
    this.showForgotButton = false,
  });

  @override
  GoLoginState createState() => GoLoginState();
}

class GoLoginState extends State<GoLogin> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.showAppBar
          ? AppBar(
              backgroundColor: widget.appBarColor ?? Colors.blue,
              title: Text(widget.appbartitle ?? 'Example'),
              centerTitle: widget.appBarTitleisCenter,
            )
          : null,
      body: Container(
        decoration: BoxDecoration(
          color: widget.useBackgroundColor ? Colors.white : Colors.white,
          image: widget.useBackgroundImage && widget.backgroundImage != null
              ? DecorationImage(
                  image: AssetImage(widget.backgroundImage!),
                  fit: BoxFit.cover,
                )
              : null,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(child: widget.sizedBox),
              if (widget.textFormField)
                ListView(
                  shrinkWrap: true,
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: widget.textField,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: TextFormField(
                              controller: widget.textController![index],
                              obscureText:
                                  widget.labelText![index] == "Password"
                                      ? widget.isObscure
                                      : widget.labelText![index] ==
                                              "Confirm Password"
                                          ? widget.isObscureCP
                                          : false,
                              decoration: widget.labelText![index] == "Password"
                                  ? InputDecoration(
                                      labelText: 'Password',
                                      hintText: 'Enter Password',
                                      prefixIcon: const Align(
                                        widthFactor: 1.0,
                                        child: Icon(
                                          Icons.lock,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: const BorderSide(
                                          width: 1,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      filled: true,
                                      contentPadding: const EdgeInsets.all(16),
                                      fillColor: Colors.white,
                                      suffixIcon: IconButton(
                                          icon: Icon(widget.isObscure
                                              ? Icons.visibility
                                              : Icons.visibility_off),
                                          onPressed: () {
                                            setState(() {
                                              widget.isObscure =
                                                  !widget.isObscure;
                                            });
                                          }),
                                    )
                                  : widget.labelText![index] ==
                                          "Confirm Password"
                                      ? InputDecoration(
                                          labelText: 'Confirm Password',
                                          hintText: 'Enter Re Password',
                                          prefixIcon: const Align(
                                            widthFactor: 1.0,
                                            child: Icon(
                                              Icons.lock,
                                            ),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: const BorderSide(
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          filled: true,
                                          contentPadding:
                                              const EdgeInsets.all(16),
                                          fillColor: Colors.white,
                                          suffixIcon: IconButton(
                                              icon: Icon(widget.isObscureCP
                                                  ? Icons.visibility
                                                  : Icons.visibility_off),
                                              onPressed: () {
                                                setState(() {
                                                  widget.isObscureCP =
                                                      !widget.isObscureCP;
                                                });
                                              }),
                                        )
                                      : widget.decoration![index],
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (widget.labelText![index] == "Email") {
                                  if (value!.isEmpty) {
                                    return 'Please Enter Email';
                                  }
                                  if (!RegExp(
                                          "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                      .hasMatch(value)) {
                                    return 'Please enter a valid Email';
                                  }
                                }

                                if (widget.labelText![index] == "User") {
                                  if (value!.isEmpty) {
                                    return "Please Enter UserName";
                                  }
                                  if (value.length < 2) {
                                    return "Please enter a valid Name";
                                  }
                                }

                                if (widget.labelText![index] == "Mobile") {
                                  if (value!.isEmpty) {
                                    return "Please Enter Mobile";
                                  }
                                  if (value.length < 9) {
                                    return "Please enter a valid Mobile Number";
                                  }
                                }
                                if (widget.labelText![index] == "DOB") {
                                  if (value!.isEmpty) {
                                    return "Please Enter Mobile";
                                  }
                                }

                                if (widget.labelText![index] == "Password") {
                                  if (value!.isEmpty) {
                                    return "Please Enter Password";
                                  }
                                  if (value.length < 8) {
                                    return "Password must be atleast 8 characters long";
                                  }
                                }
                                if (widget.labelText![index] ==
                                    "Confirm Password") {
                                  if (value!.isEmpty) {
                                    return "Please Re-Enter New Password";
                                  }
                                  if (value.length < 8) {
                                    return "Password must be atleast 8 characters long";
                                  }
                                  if (value !=
                                      widget
                                          .textController![
                                              widget.textField! - 2]
                                          .text) {
                                    return "Password must be same as above";
                                  }
                                }
                                return null;
                              },
                            ),
                          );
                        }),
                  ],
                ),
              if (widget.showForgotButton)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          widget.onForgotPressed();
                        },
                        child: Text(
                          widget.forgotButtonTitle ?? "Forgot Password?",
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              const Spacer(),
              if (widget.showLoginButton)
                Container(
                  width: widget.buttonWidth ?? 150,
                  height: widget.buttonHeight ?? 60,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          widget.onLoginPressed();
                        }
                      },
                      child: Text(
                        widget.loginButtonTitle ?? 'Login',
                      ),
                      style: widget.ElevatedButton ??
                          ElevatedButton.styleFrom(
                              elevation: 20,
                              shape: StadiumBorder(),
                              backgroundColor: Colors.blue),
                    ),
                  ),
                ),
              if (widget.showAlreadyLogin)
                Padding(
                  padding:
                      widget.padding ?? const EdgeInsets.only(bottom: 24.0),
                  child: InkWell(
                    onTap: () {
                      widget.onAlreadyLoginPressed();
                    },
                    child: widget.child ??
                        const Text.rich(
                          TextSpan(
                            text: "Already Have An Account ",
                            style: TextStyle(fontSize: 20),
                            children: [
                              TextSpan(
                                  text: ' Login',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.blue))
                            ],
                          ),
                        ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
