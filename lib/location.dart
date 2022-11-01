import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<LocationScreen> {
  @override
  Widget build (BuildContext context){

    return Scaffold(
        appBar: AppBar(
          leading: ModalRoute.of(context)?.canPop == true
              ? IconButton(
              icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black
              ),
              onPressed: () => Navigator.of(context).pop()
          ): null,
          title: Text(
              "Safe Spaces",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black
              )
          ),
          backgroundColor: Color(0XFFC1C4FF),
        ),
        body: SingleChildScrollView(
            child: Column(
                children: <Widget>[

                ]
            )
        )
    );
  }
}
