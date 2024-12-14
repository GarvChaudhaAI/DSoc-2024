import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Login",
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),
        ),
        backgroundColor: Colors.indigo[900],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "DSOC",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20.0),
                  ),
                  Icon(
                    Icons.format_align_left,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 80.0,),
              Text(
                "Welcome Back!",
                style: TextStyle(color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.bold,),
              ),
              SizedBox(height: 10.0,),
              Text(
                "Login to continue",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 40.0,),
              Text(
                "Email",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0)
              ),

              TextField(
                style: TextStyle(fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.amber[50],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  isDense: true,
                ),
              ),
              SizedBox(height:40.0),
              Text(
                  "Password",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0)
              ),
              TextField(
                style: TextStyle(fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.amber[50],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  isDense: true,
                ),

              ),
              SizedBox(height: 10.0,),
              Row(children: [Checkbox(value: value, onChanged: (bool? check){
                setState(() {
                  value = check;
                });
              }),Text("Remember Me",style: TextStyle(color: Colors.white),),]),
              SizedBox(height: 10.0,),
              Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(child: Text("Forgot password",style: TextStyle(color: Colors.amber[100], decoration: TextDecoration.underline, decorationThickness: 2.0,decorationColor: Colors.amber[100])),)
              ),
              SizedBox(height: 40.0,),
              ElevatedButton(
                onPressed: (){

                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(200.0,30.0),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.amber[200],
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: TextStyle(color: Colors.white),),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text("Sign Up",style: TextStyle(color: Colors.amber[100], decoration: TextDecoration.underline, decorationThickness: 2.0,decorationColor: Colors.amber[100]),),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blue[900],
    );
  }
}

