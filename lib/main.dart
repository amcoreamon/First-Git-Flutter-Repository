import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          // keeps the container away from the appbar and within the visible screen.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 75.0,
                backgroundImage: AssetImage('Assets/images/amcore.JPG'),
              ),
              Text(
                'Amcore Amon',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FREELANCE DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro-Regular',
                  fontSize: 25.0,
                  letterSpacing: 2.5,
                  color: Colors.teal[100],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                shadowColor: Colors.red,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.5,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text(
                          'Languages',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.teal,
                            fontFamily: 'SourceSansPro-Regular',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage:
                                AssetImage('Assets/images/flutter.png'),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage:
                                AssetImage('Assets/images/python.png'),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage:
                                AssetImage('Assets/images/javascript.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.5,
                ),
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: GestureDetector(
                        onTap: _launchURL4,
                        child: Text(
                          '+254 71825 4454',
                          style: TextStyle(
                            color: Colors.teal[900],
                            fontFamily: 'SourceSansPro-Regular',
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    )),
              ),
              Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: GestureDetector(
                        onTap: _launchURL5,
                        child: Text(
                          'amcore.amon@gmail.com',
                          style: TextStyle(
                            color: Colors.teal[900],
                            fontFamily: 'SourceSansPro-Regular',
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Connect with me',
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'Calligraffitti',
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: _launchURL1,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('Assets/images/amcoretech.jpeg'),
                    ),
                  ),
                  FlatButton(
                    onPressed: _launchURL2,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('Assets/images/icons8-github-24.png'),
                    ),
                  ),
                  FlatButton(
                    onPressed: _launchURL3,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                          'Assets/images/icons8-twitter-squared-24.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_launchURL1() async {
  const url = 'http://amcoretech.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'https://github.com/amcoreamon?tab=repositories';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL3() async {
  const url = 'https://twitter.com/kingamcore';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL4() async {
  const url = 'tel:+254 71825 4454';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL5() async {
  const url = 'mailto:amcore.amon@gmail.com?subject=News&body=New%20plugin';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
