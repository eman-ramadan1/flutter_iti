

import 'package:flutter/material.dart';

class sinUp extends StatelessWidget {
  const sinUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
 backgroundColor: Colors.purple,
  title: Text('Sign Up ' ,
style:TextStyle(
  fontSize: 30,
  color: Colors.white,

)
),),

body: Center(
  child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical:100),
          child: Form(
             
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Username', 
                  border: OutlineInputBorder(),),
                  keyboardType: TextInputType.emailAddress,
                  
                 
                  
                ),
                SizedBox(height: 16),
                TextFormField(
                   
                  decoration: InputDecoration(labelText: 'ُEmail' ,
                  
                  border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 24),

                //////
                SizedBox(height: 16),
                TextFormField(
                   
                  decoration: InputDecoration(labelText: 'ُPasword' ,
                  
                  border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 24),
                ///
                SizedBox(height: 16),
                TextFormField(
                   
                  decoration: InputDecoration(labelText: 'ُConfirm Pasword ' ,
                  
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
                
                TextButton(
              onPressed: () {
                Navigator.pop(context); //  back to Login
              },
              child: Text("Already have an account? Login"),
            ),


              ],
            ),
          ),
        ),
),
    

    );}}