import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0,),
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
              SizedBox(height: 100.0,),
              Image.asset('images/homescreen.jpg'),
              SizedBox(height:20.0),
              Text(
                "Hello, Welcome!",
                style: TextStyle(color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0,),
              Text(
                "welcome to DSOC 2024",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/login');
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
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text("Sign Up"),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(200.0,30.0),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.amber[200],
                  textStyle: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
        
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blue[900],
    );
  }
}
