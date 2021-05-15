import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:parentol/utils/MyColors.dart';

class StatsTab extends StatefulWidget {
  @override
  StatsTabState createState() {
    return new StatsTabState();
  }
}

class StatsTabState extends State<StatsTab> {
  final List<String> apps = <String>[
    'Facebook',
    'Snapchat',
    'Tiktok',
    'Instagram',
    'Youtube',
    'What\'s app',
    'Viber',
    'Tinder'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Theme.of(context).accentColor,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/main_background.png",
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              padding: EdgeInsets.only(
                                  left: 6, right: 0, bottom: 2, top: 2),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios,
                                    color: Theme.of(context).primaryColor,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Stats',
                          style: TextStyle(
                              fontSize: 24.0,
                              fontFamily: 'ProximaBold',
                              color: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Most used apps Today",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'ProximaBold',
                        color: MyColors.textSelectionColor),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 180,
                    child: Expanded(
                      child: ListView.builder(
                          itemCount: apps.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/avatar_dog.png",
                                      width: 40,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width -
                                          90,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                apps[index],
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontFamily: 'ProximaBold',
                                                    color: MyColors
                                                        .textSelectionColor),
                                              ),
                                              Spacer(),
                                              Text(
                                                "1:21 hours",
                                                style: TextStyle(
                                                    fontSize: 12.0,
                                                    fontFamily: 'Proxima',
                                                    color: MyColors
                                                        .textSelectionColor),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 1,
                                            color: MyColors.textSelectionColor,
                                            child: LinearPercentIndicator(
                                              padding: EdgeInsets.zero,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  147,
                                              lineHeight: 4.0,
                                              percent: 0.3,
                                              backgroundColor:
                                                  Colors.transparent,
                                              progressColor:
                                                  Theme.of(context).buttonColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                )
                              ],
                            );
                          }),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
