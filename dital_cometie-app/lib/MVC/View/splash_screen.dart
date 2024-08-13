import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math' as math;


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  // late final AnimationController _controller =
  // AnimationController(duration: Duration(seconds: 3), vsync: this)
  //   ..repeat();

  var height = 360.0;
  var width = 360.0;

  @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => WorldStates(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of((((((((())))))))),

            ),
            // AnimatedBuilder(
            //   animation: _controller,
            //   builder: (BuildContext context, child) {
            //     return Transform.rotate(
            //       angle: _controller.value * 2.0 * math.pi,
            //       child: Container(
            //         height: 300,
            //         width: 400,
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Center(
            //               child: Image(
            //                 image: AssetImage('images/img.png'),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     );
            //   },
            // ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            Text(
              "COVID-19\nTracker App",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
