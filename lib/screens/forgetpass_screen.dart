import 'package:flutter/material.dart';
import 'package:trainingp/screens/home_screen.dart';


import 'package:trainingp/constants.dart';


class ForgetPass extends StatelessWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDFD),
      appBar: AppBar(
        centerTitle: true,

        backgroundColor: Colors.white,
        title:Text(
          'Forgot Password',
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            children:<Widget>[

              Text(
                'Please enter your email address .'
                    ' You will receive a link to create a new Password via email!',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 18,
                  height: 1,

                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                    suffixIcon: InkWell(
                      //onTap: _togglePasswordView,
                      child:Icon
                        (Icons.check,
                        size: 25,) ,
                    ),
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your email',
                  ),
                ),
              ),
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
                              Test()));
                  },

                  child: Center(

                    // Text('Create Account'),
                    child: const Text('SEND',
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
}
