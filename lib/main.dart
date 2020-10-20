import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Batman Dark Knight Animation'),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 135.0,
                right: 10,
                child: Container(
                  height: 500,
                  child: FadeTransition(
                    opacity: _animationController,
                    child: Image.asset(
                      'images/gotham_city2.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Container(
                child: Image.asset(
                  'images/batman.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
