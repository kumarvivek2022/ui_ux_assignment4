import 'package:flutter/material.dart';
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
          child: Image.network("https://www.deliveryhero.com/wp-content/uploads/2021/09/20210908-Newsroom-Gorillas-1200x660.jpg",
          height: 830,
          width: 380,
          fit: BoxFit.cover,),

    ),
          Positioned(
              bottom: 210,
              left: 85,
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSZiyV66dsx_dcd11qUyvL7SB0LP1jnWDixw&usqp=CAU"),
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
                        onPressed: () {},
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
