import 'package:flutter/material.dart';

class PlayMessageScreen extends StatefulWidget{
@override
_PlayMessageState createState() => _PlayMessageState();
}

Icon audioIcon = new Icon(
    Icons.play_arrow_rounded,
    color:  Color(0XFFFF8080)
);
Text audioLabel = new Text(
    "Play",
    style: TextStyle(
        fontFamily: 'Josefin Sans',
        fontSize: 36,
        color: Colors.black
    )
);
bool click = false;

class _PlayMessageState extends State<PlayMessageScreen>{
  @override
  Widget build(BuildContext context){
    playMessage(){
      audioIcon = new Icon(Icons.pause_outlined,  color: Color(0XFFFF8080));
      audioLabel = new Text("Pause",
          style: TextStyle(
              fontFamily: 'Josefin Sans',
              fontSize: 36,
              color: Colors.black
          )
      );
    }
    pauseMessage(){
      audioIcon = new Icon(Icons.play_arrow_rounded, color:  Color(0XFFFF8080));
      audioLabel = new Text("Play",
          style: TextStyle(
              fontFamily: 'Josefin Sans',
              fontSize: 36,
              color: Colors.black
          )
      );
    }

    return Scaffold(
      appBar: AppBar(
          leading: ModalRoute.of(context)?.canPop == true
              ? IconButton(
            icon: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.black
            ),
            onPressed: () => Navigator.of(context).pop(),
          ) : null,
          title: Text(
              'Recorded Call',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black
              )
          ),
          backgroundColor: Color(0XFFC1C4FF)
      ),
      body: Column(
          children: <Widget> [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.02
            ),
            Center(
                child: IconButton(
                    onPressed: (){
                      if (click == true) {
                        click = false;
                        print(click);
                        setState(() {
                          pauseMessage();
                        });
                      } else{
                        click = true;
                        setState((){
                          playMessage();
                        });
                      }
                    },
                    icon: audioIcon,
                    iconSize: 200,
                    color: Color(0XFFFF8080)
                )
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.02
            ),
            Center(
                child: audioLabel
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.01
            ),
            Center(
                child: Text(
                    'Script',
                    style: TextStyle(
                        fontFamily: 'Josefin Sans',
                        fontSize: 24,
                        color: Colors.black
                    )
                )
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
