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
      duration: Duration(seconds: 3),
      vsync: this,
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animation',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text('Batman Dark Knight')),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 135.0,
                right: 25,
                child: Container(
                  height: 500,
                  child: FadeTransition(
                    opacity: _animationController,
                    child: Image.asset(
                      'images/gotham_city.png',
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueGrey[600],
          child: Image(
            image: AssetImage('images/batman_logo.png'),
            fit: BoxFit.cover,
          ),
          onPressed: () => _animationController.forward(),
        ),
      ),
    );
  }
}
