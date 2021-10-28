import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CustomPlayer extends StatefulWidget {
  final String? youtubeURL;
  const CustomPlayer(this.youtubeURL);

  @override
  _CustomPlayerState createState() => _CustomPlayerState();
}

class _CustomPlayerState extends State<CustomPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: 
      YoutubePlayerController.convertUrlToId(widget.youtubeURL!)!,
      params: const YoutubePlayerParams(
        loop: true,
        color: 'transparent',
        desktopMode: true,
        strictRelatedVideos: true,
        showFullscreenButton: !kIsWeb,
      )
      );
      super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: kIsWeb ? screenSize.height/4 : screenSize.height/4,
      width: screenSize.width,
      child: YoutubePlayerControllerProvider(
        controller: _controller, 
        child: YoutubePlayerIFrame(
          controller: _controller,
        )),
    );
  }
}