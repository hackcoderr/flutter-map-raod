import 'package:businesscard/offlineaudio.dart';
import 'package:businesscard/offlinevideo.dart';
import 'package:businesscard/onlineaudio.dart';
import 'package:businesscard/onlinevideo.dart';
import 'package:businesscard/ui/socicon_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDrawerApp(),
    );
  }
}

_launchURL3() async {
  const url =
      'https://play.google.com/store/apps/details?id=com.spotify.music&hl=en_IN';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'https://github.com/aaditya2801';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL() async {
  const url = 'https://www.linkedin.com/in/aaditya-tiwari-812a39183/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

myapp1() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.grey);
}

myt() {
  Fluttertoast.showToast(
      msg: "This is Aaditya!! FLUTTER TASK 1 !! AUDIO & VIDEO PLAYER",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 6,
      backgroundColor: Colors.amber,
      textColor: Colors.white,
      fontSize: 16.0);
}

myprint() {
  print('AADITYA  !! ');
}

class MyDrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                  child: Image.network(
                      'https://raw.githubusercontent.com/aaditya2801/myflutter/master/001_-_play-512.webp')),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
            ),
            new ListTile(
              title: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.music_note), onPressed: null),
                  Text('OFFLINE MUSIC')
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new OfflineAudio()));
              },
            ),
            new ListTile(
              title: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.music_note), onPressed: null),
                  Text('ONLINE MUSIC')
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new OnlineAudio()));
              },
            ),
            new ListTile(
              title: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.video_library), onPressed: null),
                  Text('OFFLINE VIDEO')
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new OfflineVideo()));
              },
            ),
            new ListTile(
              title: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.video_library), onPressed: null),
                  Text('ONLINE VIDEO')
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new OnlineVideo()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('AV PLAYER'),
        backgroundColor: Colors.amber,
        actions: <Widget>[
          IconButton(icon: Icon(Socicon.spotify), onPressed: _launchURL3),
          IconButton(icon: Icon(Socicon.github), onPressed: _launchURL2),
          IconButton(icon: Icon(Icons.account_circle), onPressed: myt)
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade200,
        margin: EdgeInsets.all(20),
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                  width: 3,
                ),
              ),
              margin: EdgeInsets.all(50),
              // padding: EdgeInsets.all(30),
              // padding: EdgeInsets.only(left: 70),
              alignment: Alignment.center,
              width: 350,
              height: 200,
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'AADITYA TIWARI',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Socicon.linkedin), onPressed: _launchURL),
                      Text('  LinkedIn Profile'),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              // onTap: myprint,
              onDoubleTap: myprint,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://raw.githubusercontent.com/aaditya2801/myflutter/master/106597665_1160338320988117_3003956187937447887_o.jpg'),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.amber,
                    width: 3,
                  ),
                ),
                // margin: EdgeInsets.all(20),
                width: 100,
                height: 100,
                // color: Colors.blue,
                // child: Text('second'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
