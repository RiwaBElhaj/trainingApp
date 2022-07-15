import 'package:flutter/material.dart';
import 'package:trainingp/screens/registration_screen.dart';
import 'package:trainingp/screens/reset_screen.dart';
import 'forgetpass_screen.dart';
import 'home_screen.dart';
import 'splash_screen.dart';
import 'package:trainingp/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}



class InitState extends State<LoginScreen> {
  final _loginFormKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obscurePassword = true;
  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();
  bool isHiddenPassword = true;
  bool isLoading = false;
  bool registerError = false;
  bool registeredSuccessfully = false;


  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    bool obscureText = obscurePassword;
    keyboardType: var visiblePassword = TextInputType.visiblePassword;


    return Scaffold(
        backgroundColor: const Color(0xFFFFFDFD),

        // appBar: AppBar(
        //   elevation: 0,
        //   toolbarHeight: 120,
        //   backgroundColor: const Color(0xFFF7F7F7),
        //   title: Text(
        //     'Sign In',
        //
        //       style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //       fontSize: 30,
        //       height: 5,
        //       color: Colors.black,
        //      ),
        //   ),
        // ),

    //     body: SafeArea(
    //
    //       child: SingleChildScrollView(
    //         padding:
    //         EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
    //         //width: MediaQuery.of(context).size.width * 0.9,
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
    //
    //           children: [
    //             // Container(
    //             //  decoration: BoxDecoration(
    //             //      borderRadius: BorderRadius.circular(10), color: Colors.green),
    //             //   padding:
    //             //   EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
    //             //   width: MediaQuery.of(context).size.width * 0.9,
    //             //
    //             //   child: const Padding(
    //             //     padding: EdgeInsets.all(8.0),
    //             //     child: Text(
    //             //       "EMAIL",
    //             //       style: TextStyle(color: Colors.grey, fontSize: 15),
    //             //     ),
    //             //   ),
    //             // ),
    //
    //             Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
    //               child: TextFormField(
    //                 decoration: const InputDecoration(
    //                   border: UnderlineInputBorder(),
    //                   labelText: 'EMAIL',
    //                 ),
    //               ),
    //             ),
    //
    //             SizedBox(
    //                 height: 25),
    //             Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
    //               child:
    //               TextFormField(
    //               controller: passwordController,
    //               focusNode: passwordNode,
    //               textInputAction: TextInputAction.done,
    //               obscureText: obscurePassword ,
    //               validator: (value) =>
    //               value!.isEmpty
    //                   ? 'Password cannot be blank'
    //                   : null,
    //
    //                 decoration: const InputDecoration(
    //                   border: UnderlineInputBorder(),
    //                   labelText: 'PASSWORD',
    //                   // suffixIcon: IconButton(
    //                   //
    //                   //  // onPressed: () => setState(() => obscurePassword = !obscurePassword),
    //                   //  // icon: Icon(
    //                   //  //  obscurePassword ? Icons.visibility :  Icons.visibility_off,
    //                   //  //  color: Colors.blue,
    //                   // ),
    //                 ),
    //                 ),
    //
    //
    //               ),
    //
    //
    //
    //             // Container(
    //             //   padding:
    //             //   EdgeInsets.all(MediaQuery.of(context).size.width * 0.00),
    //             //   width: MediaQuery.of(context).size.width * 0.8,
    //             //
    //             //   child:
    //             //   // const Padding(
    //             //   //   padding: EdgeInsets.all(8.0),
    //             //   //   child:
    //             //     Text(
    //             //       "PASSWORD",
    //             //       style: TextStyle(color: Colors.grey, fontSize: 15),
    //             //     ),
    //             //   ),
    //             // //),
    //            SizedBox(height: MediaQuery.of(context).size.height * 0.00),
    //
    //
    //            // TextFormField(
    //            //
    //            //      controller: passwordController,
    //            //      focusNode: passwordNode,
    //            //      textInputAction: TextInputAction.done,
    //            //      obscureText: true,
    //            //      validator: (value) =>
    //            //      value!.isEmpty
    //            //          ? 'Password cannot be blank'
    //            //          : null,
    //            //
    //            //      decoration: InputDecoration(
    //            //        hintText: 'Enter your Password'.toUpperCase(),
    //            //        suffixIcon: IconButton(
    //            //
    //            //          onPressed: () => setState(() => obscurePassword = !obscurePassword),
    //            //          icon: Icon(
    //            //            obscurePassword ? Icons.visibility :  Icons.visibility_off,
    //            //            color: Colors.blue,
    //            //          ),
    //            //        ),
    //            //        hintStyle:
    //            //        const TextStyle(color: greyHintColor),
    //            //      ),
    //            //    ),
    //            //    // SizedBox(
    //            //    //   height: MediaQuery.of(context).size.height *
    //            //    //       0.05)
    //
    //             SizedBox(height: 30),
    //             MaterialButton(
    //               minWidth:400,
    //               height: 50,
    //               onPressed: (){ Navigator.of(context).push(
    //               MaterialPageRoute(
    //                builder: (context) =>
    //                    HomeScreen()));
    // },
    //               color: Color(0xFFFFC73B),
    //               shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(10),
    //           ),
    //                 child: Text(
    //             "Sign IN",
    //             style: TextStyle(
    //               fontWeight: FontWeight.w100,
    //               fontSize: 18,
    //               color: primaryLightColor,
    //             ),
    //           ),
    //         ),
    //
    //               SizedBox(height: 30),
    //             MaterialButton(
    //                 minWidth:400,
    //                 height: 50,
    //                 onPressed: (){ Navigator.of(context).push(
    //                 MaterialPageRoute(
    //                 builder: (context) =>
    //                 RegistrationScreen()));
    //                 },
    //                 color: Color(0x80F6F0F0),
    //                 shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(10),
    //                 ),
    //                 child: Text(
    //                   "Create Account",
    //                   style: TextStyle(
    //                     fontWeight: FontWeight.w100,
    //                     fontSize: 18,
    //                     color: cardTitleColor,
    //                   ),
    //                 ),
    //
    // ),
    //
    //
    //               Container(
    //                 padding: EdgeInsets.all(40),
    //                 child:  Column(
    //                     children: [
    //
    //                       Text.rich(
    //                         TextSpan(children: [
    //                           WidgetSpan(
    //                             child: InkWell(
    //                                 onTap: () {
    //                                   Navigator.of(context).push(
    //                                       MaterialPageRoute(
    //                                           builder: (context) =>
    //                                               ForgetPass()));
    //                                 },
    //                                 child: const Text(' Forget Password?.',
    //                                     style: TextStyle(
    //                                       color: primaryColor,
    //                                      // decoration: TextDecoration.underline,
    //                                     ))),
    //                           ),
    //                         ]),
    //                       ),
    //                       Text.rich(
    //                         TextSpan(children: [
    //                           WidgetSpan(
    //                             child: InkWell(
    //                                 onTap: () {
    //                                   Navigator.of(context).push(
    //                                       MaterialPageRoute(
    //                                           builder: (context) =>
    //                                               reset()));
    //                                 },
    //                                 child: const Text('Reset Password?.',
    //                                     style: TextStyle(
    //                                       color: primaryColor,
    //                                       // decoration: TextDecoration.underline,
    //                                     ))),
    //                           ),
    //                         ]),
    //                       ),
    //               ]
    //                 ),
    //               ),
    //
    //   ],
    //         ),
    //
    //
    //
    // ),
    // ),

      body: Container(
        padding: EdgeInsets.all(20.10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    height: 5,
                    color: Colors.black,),
                  ),
              ),
            ),
            SizedBox(height: 15.0),
            TextFormField(
                        decoration: const InputDecoration(
                          suffixIcon: InkWell(
                            //onTap: _togglePasswordView,
                            child:Icon
                              (Icons.check,
                               size: 25,) ,
                          ),
                          border: UnderlineInputBorder(),
                          labelText: 'EMAIL',

                        ),
                      ),
            SizedBox(height: 15.0),
            TextField(
              obscureText: isHiddenPassword ,
              decoration: InputDecoration(
                labelText: 'PASSWORD',
               // hintText: 'Password',
                suffixIcon: InkWell(
                  onTap: _togglePasswordView,
                 child:Icon
                   (Icons.visibility,) ,
                ),
              ),
            ),
            SizedBox(height: 25.0),
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
                  child: const Text('SIGN IN',
                    style: TextStyle(
                      color: Colors.black,

                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            SizedBox(
              width: 450,
              height: 50,
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.10)),
                    primary: secondaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                 onPressed: (){ Navigator.of(context).push(
                                   MaterialPageRoute(
                                   builder: (context) =>
                                   RegistrationScreen()));
                                   },

               child: Center(

                // Text('Create Account'),
                   child: const Text('CREATE ACCOUNT',
                    style: TextStyle(
                     color: Colors.black,

                    ),
                   ),
               ),
              ),
            ),
            SizedBox(height: 40),
            Container(
                          padding: EdgeInsets.all(40),
                          child:  Column(
                              children: [

                                Text.rich(
                                  TextSpan(children: [
                                    WidgetSpan(
                                      child: InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ForgetPass()));
                                          },
                                          child: const Text(' Forget Password?.',
                                              style: TextStyle(
                                                color: primaryColor,
                                               // decoration: TextDecoration.underline,
                                              ))),
                                    ),
                                  ]),
                                ),
                                Text.rich(
                                  TextSpan(children: [
                                    WidgetSpan(
                                      child: InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        reset()));
                                          },
                                          child: const Text('Reset Password?.',
                                              style: TextStyle(
                                                color: primaryColor,
                                                // decoration: TextDecoration.underline,
                                              ))),
                                    ),
                                  ]),
                                ),
                        ]
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