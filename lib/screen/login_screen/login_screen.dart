import 'package:flutter/material.dart';
import 'package:ui_ux_assignment4/screen/sign_up_screen/sign_up_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  String password = '';
  bool isPasswordVisible = false;

  @override
  void initState() {
    super.initState();

    emailController.addListener(() => setState(() {}));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Padding(
            padding: const EdgeInsets.all(50),
            child: Container(
              height: 100,
              width: 100,
              child: Image.network('https://media.istockphoto.com/vectors/carrot-flat-icon-vegetable-and-diet-vector-graphics-a-colorful-solid-vector-id694934682?k=20&m=694934682&s=612x612&w=0&h=y6S6_EZ6OeIOiPIOKwpc_88Z5MQ85cNuU10PavNiYZo=',
                  height: 250,
      ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Loging', textAlign: TextAlign.left,style: TextStyle(
                    fontSize: 25,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Enter your emails and password',style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.normal,),),
              ),
            ],
          ),

          SizedBox(height: 30,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Email'),
              ),
            ],
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
                hintText: 'Imshubho90@mail.com',
                //prefixIcon: const Icon(Icons.person),
                suffixIcon: emailController.text.isEmpty
                    ?Container(height: 0,width: 0,)
                    :IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => emailController.clear(),
                ),
                //filled: true,
                //fillColor: Colors.purple.shade100,
                border: OutlineInputBorder(
                 // borderRadius: BorderRadius.horizontal(),
                  borderSide: BorderSide.none,
                )
            ),
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Password'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) => setState(() => this.password = value),
              onSubmitted: (value) => setState(() => this.password = value),
              decoration: InputDecoration(
                  hintText: 'password',
                  //prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: isPasswordVisible
                        ?const Icon(Icons.visibility_off)
                        :const Icon(Icons.visibility),
                    onPressed: () =>
                        setState(() => isPasswordVisible = !isPasswordVisible),
                  ),
                  //filled: true,
                  //fillColor: Colors.purple.shade100,
                  //border: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(30),
                    //borderSide: BorderSide.none,
                  )
              ),
          ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text('Forgot Password?'),
            ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Container(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: ()  {},
                  child: Text("Log In")),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account?'),
              TextButton(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
              ),

            ],
          ),



            //obscureText: isPasswordVisible,
          ]
      ),
    ),




    );

  }
}
