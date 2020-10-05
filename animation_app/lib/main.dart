import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const TextStyle goldcoinGreyStyle = TextStyle(
      color: Colors.grey,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  static const TextStyle goldcoinWhiteStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  static const TextStyle GreyStyle =
      TextStyle(fontSize: 40.0, color: Colors.grey, fontFamily: "Product Sans");

  static const TextStyle WhiteStyle = TextStyle(
      fontSize: 40.0, color: Colors.white, fontFamily: "Product Sans");

  static const TextStyle boldStyle = TextStyle(
      fontSize: 40.0,
      color: Colors.black,
      fontFamily: "Product Sans",
      fontWeight: FontWeight.bold);

  static const TextStyle descriptionGreyStyle =
      TextStyle(color: Colors.grey, fontSize: 20.0, fontFamily: "Product Sans");

  static const TextStyle descriptionWhiteStyle = TextStyle(
      color: Colors.white, fontSize: 20.0, fontFamily: "Product Sans");

  final pages = [
    Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "DockerCoin",
                  style: goldcoinGreyStyle,
                ),
                Text(
                  "Skip",
                  style: goldcoinGreyStyle,
                )
              ],
            ),
          ),
          Image.asset("assets/images/docker.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Docker",
                  style: GreyStyle,
                ),
                Text(
                  "Introduction",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Docker is an open platform for developing,\n"
                  "shipping, and running applications. Docker\n"
                  " enables you to separate your applications \n"
                  "from your infrastructure so you can deliver\n"
                  "software quickly.",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Colors.teal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "RedHatCoin",
                  style: goldcoinWhiteStyle,
                ),
                Text(
                  "Skip",
                  style: goldcoinWhiteStyle,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset("assets/images/redhat.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Redhat",
                  style: WhiteStyle,
                ),
                Text(
                  "Introduction",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Red Hat, Inc. is an American multinational\n"
                  "software company that provides open source\n"
                  "software products to enterprises. Founded in\n"
                  "1993, Red Hat has its corporate headquarters\n"
                  "in Raleigh, North Carolina, with other offices\n"
                  "worldwide. It became a subsidiary of IBM on\n"
                  "July 9, 2019",
                  style: descriptionWhiteStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xff55006c),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "FlutterCoin",
                  style: goldcoinWhiteStyle,
                ),
                Text(
                  "Skip",
                  style: goldcoinWhiteStyle,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset("assets/images/flutter.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Redhat",
                  style: WhiteStyle,
                ),
                Text(
                  "Introduction",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Flutter is an opensource and free framework\n"
                  "to create high quality, high-performance mobile applications across mobile OS (Android &IOS). It provides a powerful, simple SDK to write mobile applications By using DART language (Dart is Google’s Own Language). Flutter was released in May 2017.",
                  style: descriptionWhiteStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Colors.redAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "AWSCoin",
                  style: goldcoinWhiteStyle,
                ),
                Text(
                  "Skip",
                  style: goldcoinWhiteStyle,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset("assets/images/aws.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "AWS",
                  style: WhiteStyle,
                ),
                Text(
                  "Introduction",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Amazon web Services (AWS) is a cloud service form Amazon, which provides services in the form if building blocks, these building blocks can be used to create and deploy any type of application in the Cloud",
                  style: descriptionWhiteStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
          enableLoop: true,
          fullTransitionValue: 300,
          enableSlideIcon: true,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
        ),
      ),
    );
  }
}
