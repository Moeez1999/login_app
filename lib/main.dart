import 'package:flutter/material.dart';
import 'package:login_app/Forget_screen.dart';
import 'signup.dart';
import 'validation_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignupValidation(),
      child: MaterialApp(
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Login(),
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final validationService = Provider.of<SignupValidation>(context);
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
              child: Form(
            key: _formKey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                    Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(100.0, 30.0, 100.0, 0.0),
                  child: Text(
                    "Welcome to",
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),

              Container(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                  child: Text(
                    "Pak Tourism Hub",
                    style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo),
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(25.0, 15.0, 50.0, 0.0),
                child: Text(
                  "Enter your email and password for sign in",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0),
                ),
              ),
              SizedBox(height: 30.0),
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
              SizedBox(height: 3.0),
              Container(
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: TextFormField(
                    onChanged: (String value) {
                      validationService.changeEmail(value);
                    },

                    cursorColor: Colors.black,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontStyle: FontStyle.normal),
                    //ignore: missing_return
                    validator: (input) {
                      if (input.isEmpty)
                        return 'Enter your Email';
                      else {
                        return null;
                      }
                    },

                    decoration: InputDecoration(
                        errorText: validationService.email.error,
                        fillColor: Colors.black,
                        hintText: "Enter Email",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          //fontWeight: FontWeight.w400
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigoAccent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        filled: false,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.indigo,
                        )),
                  )),
              SizedBox(height: 10.0),
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
              SizedBox(height: 3.0),
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
                  decoration: InputDecoration(
                    errorText: validationService.password.error,
                    fillColor: Colors.black,
                    hintText: "Enter Password",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 20.0),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigoAccent),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    filled: false,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.indigo,
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              // SizedBox(height: 10.0),
              SizedBox(height: 5.0),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Forget()));
                },
                child: Text(
                    '                                       Forgot Password?',
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 30.0),
                height: 85.0,
                child: Material(
                  borderRadius: BorderRadius.circular(30.0),
                  shadowColor: Colors.black,
                  // elevation: 10.0,
                  color: Colors.grey,
                  child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Monstserrat",
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new SignUp()));
                },
                child: Text('Create an Account',
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold)),
              ),
            ]),
          )),
        ]),
      ),
    ));
  }
}
