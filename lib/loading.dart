import 'package:flutter/material.dart';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        Duration (seconds: 3),
            () => Navigator.pushNamed(context,'/home')
    );
  }
  Widget build (BuildContext context){
    var image = Image.asset('assets/images/FeelSafe.png');
    return Scaffold(
        body: Container(
            child: Center(
                child: image
            )
        )
    );
  }
}
