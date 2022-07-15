import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class RestoScreen extends StatefulWidget {
  const RestoScreen({Key? key}) : super(key: key);

  @override
  _RestoScreenState createState() => _RestoScreenState();
}

class _RestoScreenState extends State<RestoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: primaryColor,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height * 0.3,
              collapsedHeight: MediaQuery.of(context).size.height * 0.12,
              floating: false,
              pinned: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 22,
                  color: logoColor,
                ),
              ),
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Container(
                    padding: const EdgeInsets.only(top: 25),
                    width: MediaQuery.of(context).size.width * 0.7,
                    // child: Text(
                    //     AppLocalizations.of(context)!.emergencyNumbers,
                    //     textAlign: TextAlign.center,
                    //     style: const TextStyle(
                    //       color: logoColor,
                    //       fontSize: 18.0,
                    //     )),
                  ),
                  background: Image.asset(
                    'assets/images/home_screen.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              child: Column(
                children: [
                  emergencyNbCard(FontAwesomeIcons.phone, 'Police', '112'),
                  emergencyNbCard(
                      FontAwesomeIcons.ambulance, 'Ambulance', '140'),
                  emergencyNbCard(FontAwesomeIcons.fireAlt, 'Fire', '175'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget emergencyNbCard(IconData iconData, String title, String data) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: FaIcon(
              iconData,
              size: MediaQuery.of(context).size.aspectRatio * 70,
              color: Colors.white,
            )),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          data,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: const Divider(color: primaryLightColor))
      ],
    );
  }
}
