import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:ui_ux_assignment4/screen/home_screen/home_screen.dart';
import 'package:ui_ux_assignment4/screen/registration/registration_screen.dart';
enum MobileVerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}
class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  MobileVerificationState currentState = MobileVerificationState.SHOW_MOBILE_FORM_STATE;
  final phoneController = TextEditingController();
  final otpController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  late String verificationId;
  bool showLoading = false;
  void signInWithAuthCredential(PhoneAuthCredential phoneAuthCredential) async{
    setState(() {
      showLoading = true;
    });
    try {
      final UserCredential authCredential =
      await _auth.signInWithCredential(phoneAuthCredential);
      showLoading = false;
      if(authCredential?.user !=null) {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen()));
      }
    } on FirebaseAuthException catch (e) {
     showLoading = false;

    }
  }

  getMobileFormWidget(context){
    return Column(
      children: [
        Text('Enter your mobile number',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        SizedBox(height: 20,width: 30,),

        TextField(
          controller: phoneController,
          //keyboardType: TextInputType.,
          decoration: InputDecoration(
            hintText: "Enter phone number",
          ),
        ),
        SizedBox(height: 20,),
        FlatButton(
            onPressed: () async {
              setState(() {
                showLoading = true;
              });
             await _auth.verifyPhoneNumber(
                  phoneNumber: phoneController.text,
                  verificationCompleted: (phoneAuthCredential) async{
                    setState(() {
                      showLoading = false;
                    });

                  },
                  verificationFailed: (verificationFailed) async{
                    setState(() {
                      showLoading = false;
                    });
                    },
                  codeSent: (verificationId, resendingToken) async{
                    setState(() {
                      showLoading = false;
                      currentState = MobileVerificationState.SHOW_OTP_FORM_STATE;
                      this.verificationId = verificationId;
                    });

                  },
                  codeAutoRetrievalTimeout: (verificationId) async{

                  },
              );
            },
          child: Text('Send'),
          color: Colors.green,
          textColor: Colors.white,
        )

        ],
    );

  }
  getOtpFormWidget(context){
    return Column(
      children: [
        Text('Enter your mobile number',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        SizedBox(height: 20,width: 30,),
        TextField(
          controller: otpController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: "Enter Otp",
          ),
        ),
        SizedBox(height: 20,),
        FlatButton(
          onPressed: () {
            PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: otpController.text);
                signInWithAuthCredential(phoneAuthCredential);
          },
          child: Text('Verify'),
          color: Colors.green,
          textColor: Colors.white,
        )

      ],
    );

  }
  final GlobalKey<ScaffoldState> _ScaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _ScaffoldKey,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const RegistrationScreen()

                ));
              },
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black,),
            );
          },
        ),
      ),
      body: Container(
        child: showLoading ? Center(child: CircularProgressIndicator(),) : currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE ?
        getMobileFormWidget(context) :
        getOtpFormWidget(context),
        padding: EdgeInsets.all(16),





       ), 

    );
  }
}

void signInWithAuthCredential(PhoneAuthCredential phoneAuthCredential) {
}




