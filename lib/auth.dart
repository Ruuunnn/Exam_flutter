import 'package:flutter/material.dart';
import 'home.dart'; // Import your home page file

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String enteredCode = '';

  void onNumberPressed(String number) {
    setState(() {
      if (enteredCode.length < 4) {
        enteredCode += number;
        if (enteredCode.length == 4) {
          // If the code is filled, navigate to the home screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        }
      }
    });
  }

  void onDeletePressed() {
    setState(() {
      if (enteredCode.isNotEmpty) {
        enteredCode = enteredCode.substring(0, enteredCode.length - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/lock.png',
                    width: 50,
                    height: 50,
                  ),
                  Positioned(
                    top: 0,
                    child: Text(
                      'Enter Security Code',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < 4; i++)
                    Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 5), // Tighter margin
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        i < enteredCode.length ? enteredCode[i] : '',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: [
                  for (int i = 1; i <= 9; i++)
                    buildNumberButton(i.toString()),
                  buildNumberButton('0'),
                  IconButton(
                    icon: Icon(Icons.backspace),
                    onPressed: onDeletePressed,
                  ),
                ],
              ),
              SizedBox(height: 21), // Add spacing to fix bottom overflow
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNumberButton(String number) {
    return TextButton(
      onPressed: () => onNumberPressed(number),
      child: Text(
        number,
        style: TextStyle(fontSize: 24, color: Colors.black),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
      home: OTPScreen(),
      debugShowCheckedModeBanner: false, // Remove debug banner
      ));
}
