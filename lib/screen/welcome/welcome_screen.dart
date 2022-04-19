import 'package:flutter/material.dart';
import 'package:ui_ux_assignment4/screen/registration/registration_screen.dart';
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
              bottom: 50,
              left: 85,
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.network("https://www.pngitem.com/pimgs/m/111-1116087_carrot-black-and-white-carrot-icon-hd-png.png"),
                      ),

                      Text('Welcome',style: TextStyle(color: Colors.white,
                        fontSize: 40,

                      ),),
                      Text('to our store',style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),),
                      SizedBox(height: 30,),
                      ElevatedButton(
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
                            borderRadius: BorderRadius.circular(17)
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ))
    ]
    ),);
  }
}
