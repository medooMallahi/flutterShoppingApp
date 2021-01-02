import 'dart:ffi';
import 'package:my_app/home_Page.dart';
import 'package:my_app/singup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  bool fNameIsEmpty = false;
  bool lNameIsEmpty = false;
  bool emailIsEmpty = false;
  bool phoneIsEmpty = false;
  bool passwordIsEmpty = false;
  bool _isRadioSelected = false;

  List<String> spinnerItems = [
    'Albania',
    'Bridgetown',
    'Manama',
    'Angola',
    'Luanda'
  ];
  List<String> genders = ['male', 'female'];
  String dropdownValue = 'Luanda';
  String dropdownValue2 = 'male';
  String inputType = 'Company name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 23),
        child: Stack(
          overflow: Overflow.visible,
          children: [
            SingleChildScrollView(
              child: Stack(
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
                      child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Enter your data",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  LinkedLabelRadio(
                                    label: "Company name",
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    value: true,
                                    groupValue: _isRadioSelected,
                                    onChanged: (bool newValue) {
                                      setState(() {
                                        inputType = "Company name";
                                        _isRadioSelected = newValue;
                                      });
                                    },
                                  ),
                                  LinkedLabelRadio(
                                    label: "User Name",
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    value: false,
                                    groupValue: _isRadioSelected,
                                    onChanged: (bool newValue) {
                                      setState(() {
                                        inputType = "User Name";
                                        _isRadioSelected = newValue;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: bgTextFiled(
                                inputType, inputType, passwordIsEmpty),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            padding: EdgeInsets.only(left: 16, right: 16),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 0.7),
                                borderRadius: BorderRadius.circular(25)),
                            child: DropdownButton(
                              underline: Container(),
                              hint: Text("Select"),
                              value: dropdownValue2,
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 24,
                              elevation: 0,
                              isExpanded: true,
                              dropdownColor: Colors.white,
                              onChanged: (String data) {
                                setState(() {
                                  dropdownValue2 = data;
                                });
                              },
                              style: TextStyle(
                                  color: Colors.black, fontSize: 22.0),
                              items: genders.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                    value: value, child: Text(value));
                              }).toList(),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          TextFormField(
                            onSaved: (value) {},
                            decoration: bgTextFiled(
                                "@Account name", "@Account name", lNameIsEmpty),
                            // ignore: missing_return
                            validator: (value) {
                              if (value == null || value == "") {
                                // ignore: missing_return, missing_return, missing_return
                                return "required filed";
                              }
                            },
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          TextFormField(
                            decoration: bgTextFiled("Instagram Account",
                                "Instagram Account ", lNameIsEmpty),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          TextFormField(
                            decoration:
                                bgTextFiled("Mobile", "Mobile", lNameIsEmpty),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          TextFormField(
                            decoration:
                                bgTextFiled("Email", "Email", lNameIsEmpty),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            padding: EdgeInsets.only(left: 16, right: 16),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 0.7),
                                borderRadius: BorderRadius.circular(25)),
                            child: DropdownButton(
                              underline: Container(),
                              value: dropdownValue,
                              hint: Text("Country"),
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 24,
                              elevation: 16,
                              isExpanded: true,
                              dropdownColor: Colors.white,
                              onChanged: (String data) {
                                setState(() {
                                  dropdownValue = data;
                                });
                              },
                              style: TextStyle(
                                  color: Colors.black, fontSize: 22.0),
                              items: spinnerItems.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                    value: value, child: Text(value));
                              }).toList(),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          TextField(
                            decoration:
                                bgTextFiled("City", "City", lNameIsEmpty),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          TextFormField(
                            decoration: bgTextFiled(
                                "Password", "Password", lNameIsEmpty),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          TextFormField(
                            decoration: bgTextFiled("Confirm password",
                                "Confirm password", lNameIsEmpty),
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
                                  onPressed: () {},
                                  child: Text(
                                    "log in",
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
                                        return SingUp();
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  "Log in",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return MainScreen();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                'SKIP',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                        ],
                      ),
                    ),
                  ))
                ],
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
        errorText: _validate ? "$label Can\'t Be Empty" : null,
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(100)));
  }
}

class LinkedLabelRadio extends StatelessWidget {
  const LinkedLabelRadio({
    this.label,
    this.padding,
    this.groupValue,
    this.value,
    this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool groupValue;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: <Widget>[
          Radio<bool>(
              groupValue: groupValue,
              value: value,
              onChanged: (bool newValue) {
                onChanged(newValue);
              }),
          RichText(
            text: TextSpan(
              text: label,
              style: TextStyle(
                color: Colors.black,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  onChanged(value);
                },
            ),
          ),
        ],
      ),
    );
  }
}
