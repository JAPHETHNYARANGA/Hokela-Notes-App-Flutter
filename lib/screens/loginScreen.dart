import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hokela_app/screens/registerScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
                        label: Text('Login'), // <-- Text
                        backgroundColor: Colors.green,
                        onPressed: _onLoginPressed,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen()));
                        },
                        child: const Text(
                          "Don't have an account? Register Here",
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
    );
  }
}

void _onLoginPressed() {
  // do something when the button is pressed
  Fluttertoast.showToast(
      msg: "Login successful",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      // timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0);
}
