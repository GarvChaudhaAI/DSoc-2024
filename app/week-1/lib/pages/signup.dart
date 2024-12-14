import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
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
              SizedBox(height: 50.0,),
              Text(
                "Create Account Now!",
                style: TextStyle(color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.bold,),
              ),
              SizedBox(height: 40.0,),
              Text(
                  "Full Name",
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
              SizedBox(height: 40.0,),
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
              SizedBox(height: 40.0,),
              Text(
                  "Phone No.",
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
              SizedBox(height: 40.0,),
              ElevatedButton(
                onPressed: (){},
                child: Text("Sign Up"),
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
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blue[900],
    );;
  }
}
