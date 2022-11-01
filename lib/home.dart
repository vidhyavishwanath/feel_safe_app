import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override

  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
          leading: Icon(
              Icons.home,
              color: Colors.black,
              size: 45
          ),
          title: Text(
              'Home',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 36
              )
          ),
          backgroundColor: Color(0XFFC1C4FF)
      ),
      body: Column(
          children: <Widget> [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.05
            ),
            Center(
              child: FlatButton(
                  onPressed: (){},
                  color: Color(0XFFFF8080),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.05, MediaQuery.of(context).size.height * 0.05, MediaQuery.of(context).size.width * 0.05, MediaQuery.of(context).size.height * 0.05),
                      child: Text(
                          'SOS Text',
                          style: TextStyle(
                              fontSize: 36,
                              color: Colors.black,
                              letterSpacing: 2
                          )
                      )
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(width: 2.0, color: Colors.black),
                  )
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.05
            ),
            Center(
              child: FlatButton(
                  onPressed: (){},
                  color: Color(0XFFC1C4FF),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.05, MediaQuery.of(context).size.height * 0.05, MediaQuery.of(context).size.width * 0.05, MediaQuery.of(context).size.height * 0.05),
                      child: Text(
                          'Call 911',
                          style: TextStyle(
                              fontSize: 36,
                              color: Colors.black,
                              letterSpacing: 2
                          )
                      )
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(width: 2.0, color: Colors.black),
                  )
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.05
            ),
            Center(
              child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/fakecall');
                  },
                  color: Color(0XFFFF8080),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.05, MediaQuery.of(context).size.height * 0.05, MediaQuery.of(context).size.width * 0.05, MediaQuery.of(context).size.height * 0.05),
                      child: Text(
                          'Recorded \n Call',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.black,
                            letterSpacing: 2,

                          )
                      )
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(width: 2.0, color: Colors.black),
                  )
              ),
            ),
          ]
      ),
      bottomNavigationBar: BottomAppBar(
          color: Color(0XFFC1C4FF),
          child: Container(
              height: MediaQuery.of(context).size.height*0.10,
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget> [
                    IconButton(
                        iconSize: 45,
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.01),
                        color: Colors.black,
                        icon: Icon(Icons.location_on),
                        onPressed: () {
                          Navigator.pushNamed(context, '/location');
                        }
                    ),
                    IconButton(
                        iconSize: 45,
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.01),
                        color: Colors.black,
                        icon: Icon(Icons.home),
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        }
                    ),
                    IconButton(
                        iconSize: 45,
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.01),
                        color: Colors.black,
                        icon: Icon(Icons.settings),
                        onPressed: () {
                          Navigator.pushNamed(context, '/settings');
                        }
                    )
                  ]
              )
          )
      ),
    );
  }
}