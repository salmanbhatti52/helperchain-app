import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:helpers_chain/variables/globalVariables.dart';
import 'package:helpers_chain/widgets/my-button.dart';
import 'package:helpers_chain/widgets/my-text.dart';
import 'package:video_player/video_player.dart';
import 'data-after-bvn.dart';

class VerifyId extends StatefulWidget {
  const VerifyId({Key? key}) : super(key: key);

  @override
  State<VerifyId> createState() => _VerifyIdState();
}

class _VerifyIdState extends State<VerifyId> {
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/add.mp4')
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
    ));
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
          backgroundColor: KPink,

          body: Stack(
            children: [

              ///Background Video
              SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: w * 3.2,
                    height: h,
                    child: VideoPlayer(_controller),
                  ),
                ),
              ),
              ///Top Gradient
              Container(
                width: w,
                height: h * 0.4,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                     colors: [
                        Color(0xFF000000),
                        Color(0x00ffffff),
              ],
              stops: [
                0.0,
                1.0
              ]),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        HeadingText(
                          text: 'Please Wait',
                          textColor: KWhite,
                          textWeight: FontWeight.bold,
                          size: 23,
                        ),
                        const SizedBox(height: 6),
                        HeadingText(
                          text: 'Verifying Your ID',
                          textColor: KGreen,
                          textWeight: FontWeight.bold,
                          size: 23,
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                    SpinKitRing(
                    color: Colors.white,
                      size: 50.0,
                      lineWidth: 2,
                    ),

                      ],
                    ),
                  ],
                ),
              ),

              ///temporary button
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MyElevatedButton(
                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const DataAfterBVN()));
                        },
                        child: const Text('TEMPORARY BUTTON'),
                        borderRadius: BorderRadius.circular(30),



                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ));
  }
}
