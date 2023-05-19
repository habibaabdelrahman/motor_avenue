import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  final VideoPlayerController controller = VideoPlayerController.asset(
    'assets/Video/splash.mp4',
  );
  @override
  void initState() {
    super.initState();
      controller.initialize().then((_) {
        controller.setVolume(0.0);
        controller.setLooping(true);
        controller.play();
        setState(() {});
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Stack(
          children: <Widget>[
            controller.value.isInitialized
                ? LayoutBuilder(
              builder: (context, constraints) {
                return SizedBox.expand(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width:
                      constraints.maxWidth * controller.value.aspectRatio,
                      height: constraints.maxHeight,
                      child: VideoPlayer(controller),
                    ),
                  ),
                );
              },
            )
         : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'MOTOR',
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MontserratSubrayada'),
                ),
                SizedBox(width: 10),
                Image.asset(
                  'assets/images/logoo.png',
                  width: 65,
                ),
                SizedBox(width: 10),
                Text(
                  'AVENUE',
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MontserratSubrayada'),
                ),
              ],
            ),
          ],
        ),
      ]
    ),
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
