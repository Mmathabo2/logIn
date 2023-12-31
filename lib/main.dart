import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //Initialize firbass app
  Future<FirebaseApp> _initializeFirebase()


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreen(),
    );
  }
}
/*
To do list
a ui
*/

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ignore: prefer_const_constructors
          Text("My app tittle",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
          ),
          Text("Login to your app", 
          style: TextStyle(
            color: Colors.black,
            fontSize: 44.0,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(
            height: 44.0,
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "User Email",
              prefixIcon: Icon(Icons.mail,
              color: Colors.black)

            )
          ),
          SizedBox(
            height: 12.0,
          ),
          TextField(
            obscureText: true,
            decoration:InputDecoration(
              hintText: "User Password",
              prefixIcon: Icon(Icons.lock,
              color: Colors.black
              ),
            ) ,
          ),
          Text("Don't Remeber your Passsord?",
          style: TextStyle(
            color: Colors.blue),
            ),
            SizedBox(
              height: 28.0,
            ),
            Container (
              width: double.infinity,
              child: RawMaterialButton(
                fillColor: Colors.red,
                elevation: 0.0,
                padding: EdgeInsets.symmetric(vertical: 20.0,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
                  onPressed: () {},
                  child: const Text("Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0
                  ),),),
            )
        ],
      ),


    );
  }
}

