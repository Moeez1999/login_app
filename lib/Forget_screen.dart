import "package:flutter/material.dart";
import 'package:login_app/main.dart';
import 'package:provider/provider.dart';
import 'validation_bloc.dart';

class Forget extends StatefulWidget {
  @override
  _ForgetState createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  TextEditingController editController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final validationService = Provider.of<SignupValidation>(context);

    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 50.0, 0.0, 30.0),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 20.0),
                child: Text(
                  "Enter your correct email we will send you reset password link :)",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 320.0, 0.0),
                child: Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                onChanged: (String value) {
                  validationService.changeEmail(value);
                },
                cursorColor: Colors.black,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal),
                controller: editController,
                decoration: InputDecoration(
                    errorText: validationService.email.error,
                    hintText: "Enter Email",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontStyle: FontStyle.normal),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigoAccent),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.indigo,
                    )),
              ),
              SizedBox(height: 20.0),
              Container(
                  padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    shadowColor: Colors.indigo,
                    elevation: 17.0,
                    color: Colors.grey,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Monstserrat",
                              color: Colors.black),
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 16,
              ),
              //SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
                height: 40.0,
                child: Material(
                  borderRadius: BorderRadius.circular(30.0),
                  shadowColor: Colors.black,
                  elevation: 17.0,
                  color: Colors.grey,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Login()));
                    },
                    child: Center(
                      child: Text(
                        "Back",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Monstserrat",
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
