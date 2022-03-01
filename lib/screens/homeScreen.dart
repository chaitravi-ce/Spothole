import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/InfoWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.location_on,
          size: 46,  
          color: Color(0xffd69b3d),
        ),
        title: Text(
          "Spothole",
          style: GoogleFonts.cardo(
            letterSpacing: 0.3,
            textStyle: Theme.of(context).textTheme.headline1,
            color: Theme.of(context).cardColor
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        toolbarHeight: 90,
        elevation: 20,
      ),
      body: Column(
        children: [
          SizedBox(height: size.height*0.1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.map_outlined,
                size: 36,  
                color: Color(0xff976741),
              ),
              SizedBox(width: size.width*0.01,),
              Text(
                "Pothole Data",
                style: GoogleFonts.josefinSans(
                  textStyle: Theme.of(context).textTheme.headline2,
                  color: Theme.of(context).backgroundColor,
                  fontWeight: FontWeight.w600
                )
              ),
            ],
          ),
          SizedBox(height: size.height*0.05,),
          SizedBox(
            height: size.height*0.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const InfoWidget(number: 250, tex: "Spotted on Earth"),
                SizedBox(width: size.width*0.2,),
                const InfoWidget(number: 101, tex: "Reported in Mumbai"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}