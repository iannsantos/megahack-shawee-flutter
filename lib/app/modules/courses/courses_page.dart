import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:invest_school/app/shared/style/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CoursesPage extends StatefulWidget {
  final String title;
  const CoursesPage({Key key, this.title = "Courses"}) : super(key: key);

  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  int totalProgress = 160;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          child: Image.asset("logo.png"),
          height: 90,
          width: 90,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Color(PRIMARY_COLOR),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(10),
          crossAxisSpacing: 25,
          mainAxisSpacing: 25,
          shrinkWrap: true,
          childAspectRatio: 0.8,
          children: <Widget>[
            InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                Modular.to.pushNamed('/play');
              },
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(COLOR_THREE),
                      Color(COLOR_TWO),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white24,
                          ),
                          margin: EdgeInsets.all(15),
                          padding: EdgeInsets.only(
                            top: 13,
                          ),
                          child: Text(
                            "01",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        "Conhecendo os investimentos",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    LinearPercentIndicator(
                      percent: 0.3,
                      backgroundColor: Colors.white24,
                      progressColor: Colors.white,
                      lineHeight: 2,
                      padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // body: Column(
      //   children: <Widget>[
      //     Card(
      //         margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      //         elevation: 2,
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: <Widget>[
      //             Row(
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               children: <Widget>[
      //                 Padding(
      //                   padding:
      //                       EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      //                   child: SizedBox(
      //                     height: 80,
      //                     width: 120,
      //                     child: Image.network(
      //                         "https://www.marquetteassociates.com/wp-content/uploads/2019/08/Investing-101-thumbnail-1024x608.jpg"),
      //                   ),
      //                 ),
      //                 Expanded(
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                         "Como investir certo para ganhar dinheiro em tempo recorde",
      //                         maxLines: 3,
      //                         style: TextStyle(
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.bold,
      //                         ),
      //                       ),
      //                       SizedBox(
      //                         height: 5,
      //                       ),
      //                       Text(
      //                         "Autor",
      //                         style: TextStyle(color: Colors.grey),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         )),
      //   ],
      // ),
    );
  }
}
