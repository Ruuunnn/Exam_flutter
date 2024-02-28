import 'login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.white, // Change primary color to white
          secondary: Colors.white,
          onSecondary: Colors.white,
        ),
        useMaterial3: true,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'Poppins', // Change font family to Poppins
            fontWeight: FontWeight.w400, // Change font weight to 400
            fontSize: 24,
            height: 1.5, // Set line height to 36 pixels (24 * 1.5)
            color: Colors.black, // Set text color to black
          ),
          bodyText1: TextStyle(
            fontFamily: 'Poppins', // Change font family to Poppins
            fontWeight: FontWeight.w300, // Change font weight to 300
            fontSize: 12,
            height: 1.5, // Set line height to 18 pixels
            color: Color(0xFF606060), // Set text color to #606060
          ),
          button: TextStyle( // Define button text style
            color: Colors.white, // Set text color to white
          ),
        ),
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          title: Text(widget.title),
          leading: Image.asset( // Adding the icon in the upper-left corner
            'assets/icons/iconapp.png',
            width: 30, // Adjust width as needed
            height: 30, // Adjust height as needed
          ),
          actions: [
            IconButton(
              onPressed: () {
                // Add your action here
              },
              icon: Image.asset(
                'assets/icons/ic_round-translate.png',
                width: 30, // Adjust width as needed
                height: 30, // Adjust height as needed
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 20), // Add margin between image and text
                child: Image.asset(
                  'assets/images/Card.png',
                  width: 261.31,
                  height: 264.16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
                child: Text(
                  'Transfers between accounts',
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20), // Add some spacing between the texts
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
                child: Text(
                  'Choose the savings you want to open, we have lots of services according to what you need',
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 60), // Add some spacing between the texts and the button
              Container(
                width: 343, // Fixed width
                height: 53, // Hug height
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                    // Add your button action here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF05BE71), // Set button color to hex #05BE71
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Set button radius
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10), // Set button padding
                  ),

                  child: Text(
                    'Get started',
                    style: Theme.of(context).textTheme.button, // Use button text style
                  ),
                ),
              ),
              // Add some spacing between the button and the bottom side of the app
            ],
          ),
        ),
        backgroundColor: Colors.white, // Set background color of Scaffold to white
        );
    }
}