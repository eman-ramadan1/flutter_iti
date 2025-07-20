
import 'package:flutter/material.dart';
import 'package:textform/sinUp.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
  backgroundColor: Colors.purple,
  title: Text('Welcome' ,
style:TextStyle(
  fontSize: 30,
  color: Colors.white,

)
),),

body: Center(
  child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 200),
          child: Form(
             
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Enter your Email', 
                  border: OutlineInputBorder(),),
                  keyboardType: TextInputType.emailAddress,
                  
                 
                  
                ),
                SizedBox(height: 16),
                TextFormField(
                   
                  decoration: InputDecoration(labelText: 'ُEnter your password' ,
                  
                  border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 24),
                ///////////////pressed  puttom
                Container(
                  width: 250,
                
                  child: ElevatedButton(
                    onPressed: () {  },
                    child: 
                    
                    Text('Login'),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  child: Text('forget password?  ',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.purple,
                  ),),
                ),
                SizedBox(height: 60),
               TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => sinUp()),
                );
              },
              child: Text("Don't have an account? Sign up"),
            ),
                

              ],
            ),
          ),
        ),
),
    

    );}}