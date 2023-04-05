import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hokela_app/screens/loginScreen.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Stack(
            children: [
              Image.asset('assets/Images/woman.jpg'),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Welcome to your Todo Application",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Colors.white),
                          // fillColor: Colors.white,
                          // filled: true
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.white),
                          // fillColor: Colors.white,
                          // filled: true
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white),
                          // fillColor: Colors.white,
                          // filled: true
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: FloatingActionButton.extended(
                          label: Text('Register'), // <-- Text
                          backgroundColor: Colors.green,
                          onPressed: _onRegisterPressed,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child:  const Text(
                            "Already have an account? Login Here Instead",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}

void _onRegisterPressed() {
  // do something when the button is pressed
  Fluttertoast.showToast(
      msg: "Register successful",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      // timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0);
}