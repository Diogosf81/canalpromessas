import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class ScreenVideo extends StatefulWidget {
  const ScreenVideo({Key? key}) : super(key: key);

  @override
  _ScreenVideoState createState() => _ScreenVideoState();
}

class _ScreenVideoState extends State<ScreenVideo> {
  final videoPlayerController = VideoPlayerController.network(
      'https:\/\/video01.kshost.com.br\/gente8322\/gente8322\/playlist.m3u8');
  late ChewieController chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        aspectRatio: 3 / 2,
        //autoPlay: false,
        //looping: true,
        autoInitialize: true,
        allowFullScreen: true
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            chewieController.pause();
            Navigator.of(context).pop();
          },
        ),
        //backgroundColor: Color(0xFF3F5AA6),
        backgroundColor: Colors.black,
        //actions: [IconButton(onPressed: _reset, icon: Icon(Icons.refresh))],
        centerTitle: true,
        //title: Text("Canal Promessas"),
        title: Image.asset(
          'image/logo_canal_promessas.png',
          fit: BoxFit.contain,
          height: 70,
        ),
      ),
      body: Container(
          color: Colors.black87, child: Chewie(controller: chewieController)),
    );
  }
}
