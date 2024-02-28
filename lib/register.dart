import 'package:flutter/material.dart';
import 'auth.dart'; // Import your auth.dart file

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register'),
          backgroundColor: Colors.white, // Set app bar background color to white
          elevation: 0, // Remove app bar shadow
        ),
        backgroundColor: Colors.white, // Set background color to white
        body: SingleChildScrollView( // Wrap with SingleChildScrollView
            child: Padding(
              padding: const EdgeInsets.all(20.0), // Add some padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create an Account',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20), // Add space between the title and input fields
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black, // Set border color to black
                          width: 3, // Set border width to 3px
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16), // Add space between fields
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black, // Set border color to black
                          width: 3, // Set border width to 3px
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16), // Add space between fields
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black, // Set border color to black
                          width: 3, // Set border width to 3px
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16), // Add space between fields
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black, // Set border color to black
                          width: 3, // Set border width to 3px
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Add space between fields and button
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OTPScreen()), // Navigate to auth.dart
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Set button color to green
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Set button border radius
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16), // Set button padding
                      ),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ),
        );
    }
}
