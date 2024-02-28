import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white, // Set app bar background color to white
          elevation: 0, // Remove app bar shadow
          automaticallyImplyLeading: false, // Remove back button
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/logodragonfly.png', // Add logo image
                  width: 80, // Adjust width to 80 pixels
                  height: 21, // Adjust height to 21 pixels
                ),
              ),
              Expanded(child: Container()), // Push scanner image to the right
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/scanner.png', // Add scanner image
                  width: 40,
                  height: 40,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white, // Set background color to white
        body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20), // Add space above the content
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 50.0), // Adjust top padding
                        child: Container(
                          width: 343, // Set width to 343 pixels
                          height: 309, // Set height to 309 pixels
                          child: Image.asset(
                            'assets/images/Frame 286.png', // Add image
                            fit: BoxFit.cover, // Ensure image covers the container
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 343, // Set width to 343 pixels
                        height: 526, // Set height to 526 pixels
                        child: Image.asset(
                          'assets/images/My pocket.png', // Add image
                          fit: BoxFit.cover, // Ensure image covers the container
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 343, // Set width to 343 pixels
                        height: 257, // Set height to 257 pixels
                        child: Image.asset(
                          'assets/images/Currency.png', // Add image
                          fit: BoxFit.cover, // Ensure image covers the container
                        ),
                      ),
                    ),
                    // Add other widgets below the images if needed
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/Footer.png', // Add footer image
                  fit: BoxFit.cover, // Ensure image covers the container
                ),
              ),
            ],
            ),
        );
    }
}
