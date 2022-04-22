import 'package:flutter/material.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                    Text('Sign Up', textAlign: TextAlign.left,style: TextStyle(
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
                    child: Text('Enter your credentials to continue',style: TextStyle(
                      fontSize: 15,fontWeight: FontWeight.normal,),),
                  ),
                ],
              ),

              SizedBox(height: 30,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Username'),
                  ),
                ],
              ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField (
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter Your Name'
          ),
        ),
      ),
      SizedBox(height: 10,),
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
                    hintText: 'Imshubho90@gmail.com',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text('By continuing you agree to our'),

                  TextButton(
                    child: Text(
                      "Terms of service",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('and'),
                  TextButton(
                    child: Text(
                      "Terms of service",
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
                      child: Text("Sign Up")),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    child: Text(
                      "Sign up",
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
