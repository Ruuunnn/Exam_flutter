import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'auth.dart'; // Import your home page file
import 'register.dart'; // Import the RegisterScreen file
import 'package:flutter/gestures.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isChecked = false; // Define isChecked variable here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset(
            'assets/icons/iconapp.png',
            width: 30,
            height: 30,
          ),
          title: Text(''),
          actions: [
            IconButton(
              onPressed: () {
                // Add your translate icon action here
              },
              icon: Image.asset(
                'assets/icons/ic_round-translate.png',
                width: 30,
                height: 30,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white, // Set background color to white
        body: SingleChildScrollView( // Wrap with SingleChildScrollView
            child: Padding(
              padding: const EdgeInsets.all(20.0), // Add some padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 36,
                      height: 1.5, // Set line height to 54px (36 * 1.5)
                    ),
                  ),
                  SizedBox(height: 20), // Add space between the texts
                  Text(
                    'Enjoy all the features that make it easy for you to manage your finances',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5, // Set line height to 18px
                      color: Color(0xFF606060), // Set text color to hex #606060
                    ),
                  ),
                  SizedBox(height: 40), // Add space between the text and the login form
                  Container(
                    width: double.infinity,
                    constraints: BoxConstraints(maxWidth: 343), // Fixed width
                    height: 71, // Fixed height
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), // Set border radius
                      border: Border.all(width: 1, color: Colors.grey), // Set border
                    ),
                    padding: EdgeInsets.fromLTRB(16, 10, 16, 10), // Set padding
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none, // Remove default border
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 21 / 14, // Set line height
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16), // Add space between the email field and password field
                  Container(
                    width: double.infinity,
                    constraints: BoxConstraints(maxWidth: 343), // Fixed width
                    height: 71, // Fixed height
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), // Set border radius
                      border: Border.all(width: 1, color: Colors.grey), // Set border
                    ),
                    padding: EdgeInsets.fromLTRB(16, 10, 16, 10), // Set padding
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none, // Remove default border
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 21 / 14, // Set line height
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Add space between the password field and the checkbox
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align children to the space between
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                            fillColor: MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return Colors.blue; // Change the fill color to blue when selected
                                }
                                return Colors.white; // Default fill color when not selected
                              },
                            ),
                            checkColor: Colors.white, // Change the check color to white
                            visualDensity: VisualDensity.standard, // Adjust checkbox size
                          ),
                          Text('Remember me'),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigate to the forgot account page
                        },
                        child: Text(
                          'Forgot account?',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: Colors.blue, // Set text color to blue
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Add space between the checkbox and the login button
                  Container(
                    width: double.infinity,
                    constraints: BoxConstraints(maxWidth: 343), // Fixed width
                    height: 53, // Hug height
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OTPScreen()), // Navigate to home.dart
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF05BE71), // Set button color to hex #05BE71
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Set button radius
                        ),
                        padding: EdgeInsets.fromLTRB(16, 10, 16, 10), // Set button padding
                        side: BorderSide(width: 10, color: Colors.transparent),
                      ),
                      child: Text('Login'),
                    ),
                  ),
                  SizedBox(height: 10), // Add space below the login button
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Other',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Colors.black, // Set text color to black
                            fontWeight: FontWeight.w400,
                            height: 21 / 14, // Set line height
                          ),
                        ),
                        SizedBox(height: 10), // Add space between text and button
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => OTPScreen()), // Navigate to OTPScreen
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(maxWidth: 343), // Fixed width
                            height: 53, // Fixed height
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10), // Set border radius
                              border: Border.all(width: 1, color: Colors.grey), // Set border
                            ),
                            padding: EdgeInsets.fromLTRB(16, 10, 16, 10), // Set padding
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/icons8-google.svg',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Login with Google',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20), // Add space between the "Other" section and the footer
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.grey, // Set text color to grey
                            ),
                            children: [
                              TextSpan(
                                text: "Don't have an account? ",
                              ),
                              TextSpan(
                                text: 'Register',
                                style: TextStyle(
                                  color: Colors.green, // Set text color to green
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => RegisterScreen()), // Navigate to RegisterScreen
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ),
        );
    }
}
