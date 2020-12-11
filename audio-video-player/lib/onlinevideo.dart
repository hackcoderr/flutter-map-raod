import 'package:businesscard/ui/socicon_icons.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class OnlineVideo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<OnlineVideo> {
  VideoPlayerController _videoController;
  int _playbackTime = 0;

  void _initPlayer() async {
    _videoController = VideoPlayerController.network(
        'https://raw.githubusercontent.com/aaditya2801/myflutter/master/InShot_20200711_130628554.mp4');
    await _videoController.initialize();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _initPlayer();
    _videoController.addListener(() {
      setState(() {
        _playbackTime = _videoController.value.position.inSeconds;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Socicon.youtube),
        title: Text(
          'ONLINE VIDEO PLAYER',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: _videoController.value.initialized ? _playerWidget() : Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _videoController.value.isPlaying
              ? _videoController.pause()
              : _videoController.play();
          setState(() {});
        },
        child: _videoController.value.isPlaying
            ? Icon(Icons.pause)
            : Icon(Icons.play_arrow),
      ),
    );
  }

  Widget _playerWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        AspectRatio(
          aspectRatio: _videoController.value.aspectRatio,
          child: VideoPlayer(_videoController),
        ),
        Slider(
          value: _playbackTime.toDouble(),
          max: _videoController.value.duration.inSeconds.toDouble(),
          min: 0,
          onChanged: (v) {
            _videoController.seekTo(Duration(seconds: v.toInt()));
          },
        )
      ],
    );
  }
}
