import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trainingp/screens/resto_screen..dart';

import '../constants.dart';


class reset extends StatefulWidget {
  const reset({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}


class InitState extends State<reset> {
  final _registerFormKey = GlobalKey<FormState>();

  bool isLoading = false;
  bool registerError = false;
  bool registeredSuccessfully = false;


  bool obscurePassword = true;

  bool isHiddenPassword = true;


  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  Widget initWidget(){
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDFD),
      appBar: AppBar(
        centerTitle: true,

        backgroundColor: Colors.white,
        title:Text(
          'Reset Password',
          style:TextStyle(
            backgroundColor: Colors.white,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,

          ),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),

      ),
      // appBar: AppBar(
      //   elevation: 0,
      //   toolbarHeight: 150,
      //   backgroundColor: const Color(0xFFF7F7F7),
      //   title: Text(
      //     'Sign up',
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 30,
      //       height: 5,
      //       color: Colors.black,
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            children:<Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Text(
                    'Please enter new password ',
                    style: TextStyle(
                     // fontWeight: FontWeight.bold,
                      fontSize: 18,
                      height: 3,
                      color: Colors.grey,),
                  ),
                ),
              ),

              SizedBox(height: 20),
              TextField(
                obscureText: isHiddenPassword ,
                decoration: InputDecoration(
                  labelText: 'NEW PASSWORD',
                  // hintText: 'Password',
                  suffixIcon: InkWell(
                    onTap: _togglePasswordView,
                    child:Icon
                      (Icons.visibility,) ,
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: isHiddenPassword ,
                decoration: InputDecoration(
                  labelText: 'CONFIRM PASSWORD',
                  // hintText: 'Password',
                  suffixIcon: InkWell(
                    onTap: _togglePasswordView,
                    child:Icon
                      (Icons.visibility,) ,
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              SizedBox(
                width: 450,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.10)),
                      primary: orangeColor,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  onPressed: (){ Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) =>
                              RestoScreen()));
                  },

                  child: Center(

                    // Text('Create Account'),
                    child: const Text('CHANGE PASSWORD',
                      style: TextStyle(
                        color: Colors.black,

                      ),
                    ),
                  ),
                ),
              ),




            ]
        ),
      ),
    );
  }
  void _togglePasswordView (){
    // if (isHiddenPassword == true){
    //   isHiddenPassword = false;
    // }
    // else{
    //   isHiddenPassword = true;
    // }

    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}

