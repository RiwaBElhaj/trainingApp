import 'package:flutter/material.dart';
import 'package:trainingp/constants.dart';
import 'package:trainingp/screens/resto_screen..dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  String dropdownvalue = '883 Spring ST, Francisco';

  // List of items in our dropdown menu
  var items = [
    '883 Spring ST, Francisco',
    'Item 2',
    'Item 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: "DELIVER TO  ",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 20,
                                  fontFamily: 'RobotoMono',
                                ),
                              ),
                            ),
                            DropdownButton(
                              // Initial Value
                              value: dropdownvalue,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),

                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              // margin: EdgeInsets.all(8),
                              height: 95,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap:  (){ Navigator.of(context).push(
                                           MaterialPageRoute(
                                             builder: (context) =>
                                                 RestoScreen()));
                                        },
                                      //focusColor: Colors.yellow,
                                      child: Container(
                                        width: 80,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 5.0,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            burger,
                                            fit: BoxFit.contain,
                                            width: 30,
                                            height: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        //height: double.infinity,
                                        width: 80,
                                        alignment: Alignment.center,

                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 5.0,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            pizza,
                                            fit: BoxFit.contain,
                                            width: 30,
                                            height: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        //height: double.infinity,
                                        width: 80,
                                        alignment: Alignment.center,

                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 5.0,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            sushi,
                                            fit: BoxFit.contain,
                                            width: 30,
                                            height: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        //height: double.infinity,
                                        width: 80,
                                        alignment: Alignment.center,

                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 5.0,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            ramen,
                                            fit: BoxFit.contain,
                                            width: 30,
                                            height: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        //height: double.infinity,
                                        width: 80,
                                        alignment: Alignment.center,

                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 5.0,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            fish,
                                            fit: BoxFit.contain,
                                            width: 30,
                                            height: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        //height: double.infinity,
                                        width: 80,
                                        alignment: Alignment.center,

                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 5.0,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            burger,
                                            fit: BoxFit.contain,
                                            width: 30,
                                            height: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Row(
                children: [
                  Text(
                    'Promo',
                    style: text1,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),

                    child: SizedBox(
                      height: 150,
                      width: 150,
                      child: ListView(
                        //shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                        Row(
                         //crossAxisAlignment: CrossAxisAlignment.center,
                         children: <Widget>[
                           ClipRRect(
                               borderRadius: BorderRadius.circular(20),
                               child: Image.asset(
                                   homeScreen,
                                   height: 300,
                                   width: 300,
                                   fit:BoxFit.fill   )
                             // width: 300,


                           ),
                           SizedBox( width: 20,),
                           ClipRRect(
                               borderRadius: BorderRadius.circular(20),
                               child: Image.asset(
                                   homeScreen,
                                   height: 300,
                                   width: 300,
                                   fit:BoxFit.fill   )
                             // width: 300,


                           ),


                           // ListTile(
                           //   title: Text('Pub 1'),
                           //   subtitle: Text('Location 1'),
                           // ),
                         ],
                        ),



                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Row(
                children: [
                  Text(
                    'Restaurants',
                    style: text1,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),

                    child: SizedBox(
                      height: 180,
                      width: 150,
                      child: ListView(
                        //shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              // ClipRRect(
                              //     borderRadius: BorderRadius.circular(20),
                              //     child: Image.asset(
                              //         restoScreen,
                              //         height: 300,
                              //         width: 300,
                              //         fit:BoxFit.fill   )
                              //   // width: 300,
                              //
                              //
                              // ),
                             InkWell(
                               onTap: (){ Navigator.of(context).push(
                                   MaterialPageRoute(
                                       builder: (context) =>
                                           RestoScreen()));
                               },
                               child: Container(
                                   height: 400,
                                   width: 450,

                                 //  color: Colors.purple,
                                   margin: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                  BorderRadius.circular(30.0),
                                image: DecorationImage(
                                   image: AssetImage(
                                       'assets/images/resto.jpg' ),
                                    fit: BoxFit.fill,
                                     ),
                                    ),

                                // ListTile(
                                //   title: Text('Pub 1'),
                                //   subtitle: Text('Location 1'),
                                // ),
                               ),
                             ),
                            ],
                          ),



                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
