import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_repo/intro_screen.dart';
import 'package:flutter_repo/login_screen.dart';
import 'package:flutter_repo/widgets/custom_textfield.dart';
import 'package:flutter_repo/widgets/custom_toast.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  void initState() {
    super.initState();
  }

  var nameTxt = TextEditingController();

  var emailTxt = TextEditingController();

  var addressTxt = TextEditingController();

  var passwordTxt = TextEditingController();

  var rePasswordTxt = TextEditingController();

  Future<bool?> showToast(String toastMsg) {
    return Fluttertoast.showToast(
        msg: toastMsg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  Future<void> validate() async {
    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailTxt.text.toString());
    if (nameTxt.text.toString().trim() == '') {
      showToast('Please Enter Your Name');
    } else if (emailTxt.text.toString().trim() == '') {
      showToast('Please Enter Your Email');
    } else if (emailValid == false) {
      showToast('Please Enter Your Correct Email');
    } else if (addressTxt.text.toString().trim() == '') {
      showToast('Please Enter Your Address');
    } else if (passwordTxt.text.toString().trim() == '') {
      showToast('Please Enter Your Password');
    } else if (rePasswordTxt.text.toString().trim() == '') {
      showToast('Please Re Enter Your Password');
    } else if (passwordTxt.text.toString() != rePasswordTxt.text.toString()) {
      showToast('Password does not match');
    } else {
      var name = nameTxt.text.toString();
      var email = emailTxt.text.toString();
      var address = addressTxt.text.toString();
      var password = passwordTxt.text.toString();

      var prefs = await SharedPreferences.getInstance();
      prefs.setString('name', name);
      prefs.setString('email', email);
      prefs.setString('address', address);
      prefs.setString('password', password);

    Timer(const Duration(seconds: 3), (() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const LoginScreen();
      }));
    }));

      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Lottie.asset('assets/rows/successful.json'),
                  ),
                ),
                Center(
                    child: Positioned(
                  top: -15,
                  child: Text(
                    'Data saved successfully',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3,
                      wordSpacing: 0.2,
                    ),
                  ),
                )),
              ],
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(child: Text('Sign Up')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              CustomTextField(
                  controllerTxt: nameTxt,
                  keyboardType: TextInputType.name,
                  hintText: 'Enter Your Name',
                  prefixIcon: Icon(Icons.person_rounded),
                  labelText: 'Enter Your Name',
                  onChanged: (nameTxt) {
                    print(nameTxt);
                  }),
              CustomTextField(
                  controllerTxt: emailTxt,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter Your Email',
                  prefixIcon: Icon(Icons.email_rounded),
                  labelText: 'Enter Your Email',
                  onChanged: (emailTxt) {
                    print(emailTxt);
                  }),
              CustomTextField(
                  controllerTxt: addressTxt,
                  keyboardType: TextInputType.streetAddress,
                  hintText: 'Enter Your Address',
                  prefixIcon: Icon(Icons.location_on_rounded),
                  labelText: 'Enter Your Address',
                  onChanged: (addressTxt) {
                    print(addressTxt);
                  }),
              CustomTextField(
                  controllerTxt: passwordTxt,
                  keyboardType: TextInputType.text,
                  hintText: 'Enter Your Password',
                  prefixIcon: Icon(Icons.password_rounded),
                  labelText: 'Enter Your Password',
                  onChanged: (passwordTxt) {
                    print(passwordTxt);
                  }),
              CustomTextField(
                  controllerTxt: rePasswordTxt,
                  keyboardType: TextInputType.text,
                  hintText: 'Re Enter Your Password',
                  prefixIcon: Icon(Icons.password_rounded),
                  labelText: 'Re Enter Your Password',
                  onChanged: (rePasswordTxt) {
                    print(rePasswordTxt);
                  }),
              Container(
                width: 335,
                height: 45,
                margin: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      validate();
                    },
                    child: const Text(
                      'SUBMIT',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.3),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
