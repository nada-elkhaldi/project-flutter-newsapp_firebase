import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/view/home/home_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    Timer(Duration(seconds: 2), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });

  }
  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1 ;
    final width = MediaQuery.sizeOf(context).width * 1 ;

    return  Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/new1.jpg',
            fit: BoxFit.cover,
              width:  width * .5,
              height:  height * .5,
            ),
            SizedBox(height: height * 0.04,),
            Text('TOP HEADLINES' , style: GoogleFonts.anton(letterSpacing: .6 , color: Colors.grey.shade700),),
            SizedBox(height: height * 0.04,),
            SpinKitChasingDots(
              color: Colors.blue ,
                size: 40,
            )

          ],
        ),
      ),
    );
  }
}
