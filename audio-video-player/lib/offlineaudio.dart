import 'dart:ui';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:businesscard/ui/socicon_icons.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class OfflineAudio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                  left: 10,
                ),
                child: IconButton(
                    iconSize: 40,
                    icon: Icon(Icons.arrow_drop_down),
                    onPressed: () {}),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x66000000),
                        offset: Offset(0, 20),
                        spreadRadius: 0,
                        blurRadius: 30,
                      ),
                      BoxShadow(
                        color: Color(0x11000000),
                        offset: Offset(0, 20),
                        spreadRadius: 0,
                        blurRadius: 30,
                      )
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: NetworkImage(
                        'https://raw.githubusercontent.com/aaditya2801/myflutter/master/61NrxM65iQL._SL1500_.jpg'),
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.width * 0.7,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'Album Title',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text('Singer Name, Label'),
              SizedBox(
                height: 5,
              ),
              Slider(
                onChanged: (v) {},
                value: 10,
                max: 100,
                min: 0,
                activeColor: Color(0xFF5E35B1),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.fast_rewind),
                      onPressed: () {}),
                  IconButton(
                      iconSize: 60,
                      icon: Icon(
                        Socicon.youtube,
                        color: Color(0xFF5E35B1),
                      ),
                      onPressed: () {
                        final play = AudioCache();
                        play.play('offlineSong.mp3');
                      }),
                  IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.fast_forward),
                      onPressed: () {}),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
