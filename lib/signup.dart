import 'package:flutter/material.dart';
import 'package:login_app/main.dart';
import "package:provider/provider.dart";
import 'validation_bloc.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  navigateTologin() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    final validationService = Provider.of<SignupValidation>(context);
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.fromLTRB(20.0, 40.0, 10.0, 0.0),
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      )),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                    child: Text(
                      "Enter your Name Email and Password for Sign Up",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    )),
                SizedBox(height: 20.0),
                Container(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 10.0),
                        Container(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 280.0, 0.0),
                          child: Text(
                            "First Name",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 3.0),
                        Container(
                            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                            child: TextFormField(
                              onChanged: (String value) {
                                validationService.changeFirstName(value);
                              },
                              cursorColor: Colors.black,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontStyle: FontStyle.normal),
                              // ignore: missing_return
                              validator: (input) {
                                if (input.isEmpty) return 'Enter First Name';
                              },
                              decoration: InputDecoration(
                                  errorText: validationService.firstName.error,
                                  hintText: "Enter First Name",
                                  hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w400),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.indigoAccent),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  filled: true,
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.indigo,
                                  )),
                            )),
                        SizedBox(height: 15.0),
                        Container(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 280.0, 0.0),
                          child: Text(
                            "Last Name",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Container(
                            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                            child: TextFormField(
                              onChanged: (String value) {
                                validationService.changeLastName(value);
                              },
                              cursorColor: Colors.black,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontStyle: FontStyle.normal),
                              // ignore: missing_return
                              validator: (input) {
                                if (input.isEmpty) return 'Enter Last Name';
                              },
                              decoration: InputDecoration(
                                  errorText: validationService.lastName.error,
                                  //fillColor: Colors.black,
                                  hintText: "Enter Last Name",
                                  hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w400),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.indigoAccent),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  filled: true,
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.indigo,
                                  )),
                            )),
                        SizedBox(height: 15.0),
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
                        SizedBox(height: 5.0),
                        Container(
                            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                            child: TextFormField(
                              onChanged: (String value) {
                                validationService.changeEmail(value);
                              },
                              cursorColor: Colors.black,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.normal),
                              // ignore: missing_return
                              validator: (input) {
                                if (input.isEmpty) return 'Enter FIRST Name';
                              },
                              decoration: InputDecoration(
                                  errorText: validationService.email.error,
                                  //fillColor: Colors.black,
                                  hintText: "Enter Email Address",
                                  hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w400),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.indigo),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  filled: true,
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.indigo,
                                  )),
                            )),
                        SizedBox(height: 15.0),
                        Container(
                          padding: EdgeInsets.fromLTRB(10.0, 0.0, 250.0, 0.0),
                          child: Text(
                            "Date Of Birth",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Container(
                            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                            child: TextFormField(
                              onChanged: (String value) {
                                validationService.changeDOB(value);
                              },
                              cursorColor: Colors.black,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.normal),
                              // ignore: missing_return
                              validator: (input) {
                                if (input.isEmpty) return 'Enter Password';
                              },
                              decoration: InputDecoration(
                                  errorText: validationService.dob.error,
                                  //fillColor: Colors.black,
                                  hintText: "2021-01-01",
                                  hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w400),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.indigoAccent),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  filled: true,
                                  prefixIcon: Icon(
                                    Icons.date_range,
                                    color: Colors.indigo,
                                  )),
                            )),
                        SizedBox(height: 15.0),
                        Container(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 280.0, 0.0),
                          child: Text(
                            "Password",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Container(
                            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                            child: TextFormField(
                              onChanged: (String value) {
                                validationService.changePasword(value);
                              },
                              cursorColor: Colors.black,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.normal),
                              // ignore: missing_return
                              validator: (input) {
                                if (input.isEmpty)
                                  return 'Enter Password Again';
                              },
                              decoration: InputDecoration(
                                  errorText: validationService.password.error,
                                  //fillColor: Colors.black,
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w400),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.indigoAccent),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  filled: true,
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.indigo,
                                  )),
                            )),
                        SizedBox(height: 15.0),
                        Container(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 200.0, 0.0),
                          child: Text(
                            "Confirm Password",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Container(
                            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                            child: TextFormField(
                              onChanged: (String value) {
                                validationService.confirmPasword(value);
                              },
                              cursorColor: Colors.black,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.normal),
                              // ignore: missing_return
                              validator: (input) {
                                if (input.isEmpty)
                                  return 'Enter Password Again';
                              },
                              decoration: InputDecoration(
                                  errorText:
                                      validationService.confirmpassword.error,
                                  //fillColor: Colors.black,
                                  hintText: "Confirm Password",
                                  hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w400),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.indigoAccent),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  filled: true,
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.indigo,
                                  )),
                            )),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.fromLTRB(100.0, 10.0, 100.0, 0.0),
                          height: 60.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(30.0),
                            shadowColor: Colors.black,
                            elevation: 7.0,
                            color: Colors.grey,
                            child: GestureDetector(
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Monstserrat",
                                        color: Colors.black),
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      //padding: EdgeInsets.fromLTRB(20.0, 0.0, 60.0, 0.0),
                      child: Text(
                        "Already have an account ?",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: navigateTologin,
                      //padding: EdgeInsets.fromLTRB(0.0, 0.0, 60.0, 0.0),
                      child: Text(
                        " Login",
                        style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
