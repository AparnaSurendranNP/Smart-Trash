import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:waste_management_org/Pages/register_as.dart';
import 'package:waste_management_org/Pages/new_page.dart';
import 'new_page.dart';
class login extends StatelessWidget {
  login({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "LOGIN",
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username is Empty!!";
                    } else if (value.length < 8) {
                      return "Username too short!!";
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle_outlined, size: 20),
                      labelText: "Enter Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password is Empty!!";
                    } else if (value.length < 8) {
                      return "Password too short!!";
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock, size: 20),
                      labelText: "Enter Password",
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              // ignore: prefer_const_constructors
              Text("Forgot password?"),

              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    // if((uname=="abc") && (pass=="123")){
                    Fluttertoast.showToast(
                      msg: "Logged in Sucessfully",
                    );
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new_page()));

                    var isOk = formKey.currentState?.validate();
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  child: Text("Login")),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register_as()));
                    var isOk = formKey.currentState?.validate();
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  child: Text("Sign up")),
              // ignore: prefer_const_constructors
            ],
          ),
        ),
      ),
    );
  }
}
