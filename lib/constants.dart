import 'package:flutter/material.dart';


//Images
const Logo = 'assets/images/logo.jpg';
const burger = 'images/burger.png';
const pizza = 'assets/images/pizza-slice.png';
const ramen = 'assets/images/ramen.png';
const fish = 'assets/images/fish.png';
const sushi = 'assets/images/sushi.png';
const homeScreen='assets/images/home_screen.jpg';
const restoScreen='assets/images/resto.jpg';


const kHeading = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
  color: Colors.white
);

const kLabelTextStyle = TextStyle(
  fontSize: 30.0,
  //color: Colors.white70,
  fontWeight: FontWeight.bold,
  // headline6 is used for setting title's theme
  color: Colors.amber,
  // fontSize: 24,
);


//Colors constants
const greyColor = TextStyle(
  fontSize: 10.0,
  color: Colors.grey,
  fontWeight: FontWeight.bold,
);

final containerIcon =Container(
  width: 50,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey,) ,
  child: Center(
    child: Image.asset(burger),
  ),
);

const text1 =  TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

const text2 =  TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
const greyHintColor = Color(0x32F6F1F5);
const SizedBoximage=(Size.fromWidth(3));
const primaryColor = Colors.white;
const secondaryColor = Color(0xD5CFCFE2);
const orangeColor = Colors.orangeAccent;

const Color primaryLightColor = Color(0xff030000);
const cardTitleColor = Colors.black;
const logoColor = Color(0xFF111111);

//type bar colors
const Color prodTabActiveColor = Color(0xFF1E2022);
const Color prodTabInactiveColor = Color(0xFF77838F);
