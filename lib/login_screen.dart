import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_repo/intro_screen.dart';
import 'package:flutter_repo/profile_screen.dart';
import 'package:flutter_repo/widgets/custom_textfield.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  var emailTxt = TextEditingController();
  var passwordTxt = TextEditingController();

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
    var prefs = await SharedPreferences.getInstance();

    var storeEmail = prefs.getString('email');
    var storePass = prefs.getString('password');
    var email = emailTxt.text.toString();
    var password = passwordTxt.text.toString();

    print(storeEmail);
    print(storePass);

    if (email.trim() == '') {
      showToast('Please Enter Your Email');
    } else if (password.trim() == '') {
      showToast('Please Enter Your Password');
    } else if (email != storeEmail && password != storePass) {
      showToast('You are not register with us');
    } else {
      prefs.setBool('isLogin', true);
      Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return const ProfileScreen();
        }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(child: Text('Login')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.only(top: 100),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                child: Icon(Icons.person_rounded),
              ),
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
                  controllerTxt: passwordTxt,
                  keyboardType: TextInputType.text,
                  hintText: 'Enter Your Password',
                  prefixIcon: Icon(Icons.password_rounded),
                  labelText: 'Enter Your Password',
                  onChanged: (passwordTxt) {
                    print(passwordTxt);
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
