import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
    body: Column(
      children: [
       const SizedBox(height: 130,),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
          'https://assets5.lottiefiles.com/private_files/lf30_kqshlcsx.json',
           width: 200,
          height: 200
        ),
        ],
       ),
       const SizedBox(height: 120,),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()),);
        },
        child: Container(
           height: 80,
           width: 200,
          decoration: BoxDecoration(
          border: Border.all( color: Colors.white),
          borderRadius: BorderRadius.circular(50),
          color: Colors.black,
         ),
         child: const Center(
          child: Text("Start",
          style: TextStyle(
            fontSize: 25, color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
         ),
        ),)
       ],)
      ],
    ),
    );
  }
}