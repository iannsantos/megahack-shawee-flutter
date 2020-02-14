import 'package:flutter/material.dart';
import 'package:invest_school/app/shared/style/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayCoursePage extends StatefulWidget {
  final String title;
  const PlayCoursePage({Key key, this.title = "PlayCourse"}) : super(key: key);

  @override
  _PlayCoursePageState createState() => _PlayCoursePageState();
}

class _PlayCoursePageState extends State<PlayCoursePage> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'SiIztrwfg1s',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(PRIMARY_COLOR),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // iconTheme: IconThemeData(color: Color(PRIMARY_COLOR)),
      ),
      body: Container(
        // color: Color(PRIMARY_COLOR),
        child: Column(
          children: <Widget>[
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              bottomActions: <Widget>[
                ProgressBar(
                  isExpanded: true,
                ),
                RemainingDuration(),
                FullScreenButton(
                  color: Color(COLOR_TWO),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width - 15,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white24,
              ),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircularPercentIndicator(
                        radius: 50,
                        backgroundColor: Colors.black12,
                        progressColor: Colors.white,
                        percent: 0.3,
                      ),
                      Text(
                        "Conhecendo os investimentos",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
