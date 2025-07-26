import 'package:first_app/Catagory_item.dart';
import 'package:first_app/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';



class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
       appBar: AppBar(
        backgroundColor:  Colors.blue,
        title: Text(
          'Login ',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: BlueContainer(

        
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text(
                "Check your Email and write OTP code to verfiy your account " ,
                
                style: TextStyle(fontSize: 22, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 55,
                style: const TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                otpFieldStyle: OtpFieldStyle(
                  backgroundColor: Colors.white.withOpacity(0.9),
                  borderColor: Colors.transparent,
                  focusBorderColor: Colors.lightBlueAccent,
                ),
                onCompleted: (pin) {
                  print("Entered OTP: $pin");
                  // TODO: Navigate to HomePage or verify OTP
                },
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => HomePage()),
                          );
                },
                child: const Text("Verify"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
