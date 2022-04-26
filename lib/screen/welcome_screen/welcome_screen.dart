import 'package:flutter/material.dart';
import 'package:ui_ux_assignment4/screen/registration_screen//registration_screen.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black,
          child: Image.network("https://blog.malwarebytes.com/wp-content/uploads/2020/08/shutterstock_1718757049.jpg",
          height: 830,
          //width: 380,
          fit: BoxFit.cover,),
          ),
          Positioned(
            bottom: 250,
            left: 150,
            child: Container(
              height: 100,
              width: 100,
              child: Image.network("https://www.pngitem.com/pimgs/m/111-1116087_carrot-black-and-white-carrot-icon-hd-png.png"),
            ),
          ),
          Positioned(
            bottom: 150,
            left: 100,
            child: Container(
              child: Text('Welcome\nto our store',textAlign: TextAlign.center  ,style: TextStyle(color: Colors.white,
                fontSize: 40,

              ),),
            ),
          ),
          Positioned(
            bottom: 120,
            left: 100,
            child: Container(
              child: Text('Get your groceries in as fast as one hour',style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 70,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationScreen()),
                );
              },
              child: Text('Get Started'),
              style: ElevatedButton.styleFrom(
                primary: Colors.greenAccent.shade400,
                fixedSize: Size(250, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
                ),
              ),
            ),
          ),
    ]
    ),);
  }
}
