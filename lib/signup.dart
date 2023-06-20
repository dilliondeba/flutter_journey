import 'package:flutter/material.dart';
import 'package:untitled/homepage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key,});


  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text("Sign up"),
      ),
      body: Stack(
        children: [
          Container(height: 873,
            width: 500,
            child: Image.asset("assets/images/decor 1.jpg",
            fit: BoxFit.cover,
            ),
          ),
          Form(
              child:Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20
                    ),
                    TextFormField(
                      keyboardType:TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "NAME",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),

                        ),
                        labelStyle: TextStyle(
                          color: Colors.white
                        )
                      ),

                    ),

                    TextFormField(
                      keyboardType:TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "USERNAME",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),

                          ),
                          labelStyle: TextStyle(
                              color: Colors.white
                          )
                      ),

                    ),

                    TextFormField(
                      keyboardType:TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "EMAIL",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),

                          ),
                          labelStyle: TextStyle(
                              color: Colors.white
                          )
                      ),

                    ),

                    TextFormField(
                      keyboardType:TextInputType.phone,
                      decoration: InputDecoration(
                          labelText: "Phone Number",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),

                          ),
                          labelStyle: TextStyle(
                              color: Colors.white
                          )
                      ),

                    ),
                    TextButton(
                      onPressed:(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage()));
                      },
                      child: Text("Sign Up",
                        style: TextStyle(
                          color: Colors.white
                        ),

                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.purple
                      ),


                    ),

                    Text("Already a User ?",
                      style: TextStyle(
                          color: Colors.black87
                      ),

                    ),

                  ],

                ),
              )
          ),



        ],
      ),
    );
  }
}