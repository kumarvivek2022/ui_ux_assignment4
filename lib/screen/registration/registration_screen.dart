import 'package:flutter/material.dart';
import 'package:ui_ux_assignment4/screen/auth_screen/auth_screen.dart';
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Image.network("https://www.gadgetreview.com/wp-content/uploads/2020/08/best-grocery-baskets-scaled.jpg",
            fit: BoxFit.cover,),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('Get your grocery \n with rector',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AuthScreen()),
                  );
                },
                icon: Icon(
                  Icons.phone,
                  size: 25.0,
                ),
                label: Text('Sign up with number'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  //fixedSize: Size(250, 50),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),

                  ),
                ),


              ),
            ),
            SizedBox(height: 10,),
        Container(
          height: 50,
          width: double.infinity,
          margin: EdgeInsets.all(20),
           child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.email,
                size: 25.0,
              ),
              label: Text('Sign up with google'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                //fixedSize: Size(250, 50),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),

                ),
              ),


            ),
        ),

            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.all(20),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.facebook,
                size: 25.0,
              ),
              label: Text('Sign up with facebook'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue.shade400,
                //fixedSize: Size(250, 50),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),

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
