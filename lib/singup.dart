import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app/home_Page.dart';
import 'package:my_app/login.dart';

class SingUp extends StatefulWidget {
  @override
  _SingUp createState() => _SingUp();
}

class _SingUp extends State<SingUp> {
  var phoneNumber = "0592413118";
  var passwordStr = "123456";
  var errorPhone = "Enter Your Phone";
  var errorPass = "Enter Your Password";

  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  var username = "";
  var email = "";
  var passwords = "";
  var coPassword = "";

  bool phoneIsEmpty = false;
  bool passwordIsEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 23),
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Positioned(
              top: -60,
              left: -64,
              child: Image.asset(
                'assets/images/top.png',
                width: 164.23,
                height: 165.07,
              ),
            ),
            Positioned(
                bottom: -60,
                right: -64,
                child: Image.asset(
                  'assets/images/top.png',
                  width: 164.23,
                  height: 165.07,
                )),
            Positioned(
                top: 30,
                left: 50,
                right: 50,
                child: Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 24,
                    ),
                  ),
                )),
            Positioned(
              top: 150,
              left: 20,
              right: 20,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Enter your data",
                        textWidthBasis: TextWidthBasis.longestLine,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Form(
                        child: Column(
                      children: [
                        TextFormField(
                          onSaved: (values) {
                            username = values;
                          },
                          validator: (value) {
                            if (value == null || value == "") {
                              return "required";
                            }
                            return 'not valid email';
                          },
                          controller: phone,
                          keyboardType: TextInputType.phone,
                          decoration: bgTextFiled(
                              "Enter Your Phone", errorPhone, phoneIsEmpty),
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        TextFormField(
                          controller: password,
                          onSaved: (values) {
                            username = values;
                          },
                          validator: (value) {
                            if (value == null || value == "") {
                              return "required field";
                            } else if (value.length < 6) {
                              return 'not strong password';
                            }
                            return 'wrong email syntax';
                          },
                          obscureText: true,
                          decoration: bgTextFiled("Enter Your Password",
                              errorPass, passwordIsEmpty),
                        ),
                      ],
                    )),
                    SizedBox(
                      height: 8.0,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 340,
                          height: 50,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            color: Colors.black,
                            onPressed: () {
                              setState(() {
                                if (phone.text.isEmpty) {
                                  errorPhone = "Phone Can\'t Be Empty";
                                  phoneIsEmpty = true;
                                  return;
                                }
                                phoneIsEmpty = false;
                                if (password.text.isEmpty) {
                                  errorPhone = "";
                                  errorPass = "Password Can\'t Be Empty";
                                  passwordIsEmpty = true;
                                  return;
                                }
                                passwordIsEmpty = false;

                                if (password.text.toString() != passwordStr ||
                                    phone.text.toString() != phoneNumber) {
                                  phoneIsEmpty = true;
                                  passwordIsEmpty = true;
                                  errorPhone = "Check the phone number";
                                  errorPass = "Check the Password";
                                  return;
                                }
                                phoneIsEmpty = false;
                                passwordIsEmpty = false;
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return MainScreen();
                                    },
                                  ),
                                );
                              });
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have account?"),
                        SizedBox(
                          width: 12.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Login();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bgTextFiled(String hint, String label, bool _validate) {
    return InputDecoration(
        labelText: label,
        hintText: hint,
        contentPadding: EdgeInsets.only(left: 30),
        labelStyle: TextStyle(),
        fillColor: Colors.black12,
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 0.0000000001),
            borderRadius: BorderRadius.circular(100)),
        errorText: _validate ? "$label" : null,
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(100)));
  }
}
