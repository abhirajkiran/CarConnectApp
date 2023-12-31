import 'package:cam_app/screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


class SplashScreen extends StatelessWidget {

 
  
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          
          children: [

            splashImageWidget(),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyLogin()),
                );
              },
              child: Text("Get Started"),
              style: ElevatedButton.styleFrom(
               fixedSize: Size(150,50),
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
             SizedBox(height:10),
            Text(             
              '',
              style: TextStyle(fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}

class splashImageWidget extends StatelessWidget {
  const splashImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
        double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Container(
            height:screenHeight/1.4,
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
                child: Image.asset(
                  'assets/images/carconnetsplash.png',
                  fit: BoxFit.fill,
                ))),
        SplashScreenTextWidget()
      ],
    );
  }
}

class SplashScreenTextWidget extends StatelessWidget {
  const SplashScreenTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          Center(
              child: Padding(
            padding: EdgeInsets.only(top: 140.0),
            child: Text('',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          )),
          Center(
              child: Text(
            '',
            style: TextStyle(
                fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
          )),
          Center(
              child: Text(
            '',
            style: TextStyle(
                fontSize: 35, color: Colors.green, fontWeight: FontWeight.bold),
          )),
        ],
      ),
    );
  }
}
