import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parentol/utils/MyColors.dart';

class AppsTab extends StatefulWidget {
  @override
  AppsTabState createState() {
    return new AppsTabState();
  }
}

class AppsTabState extends State<AppsTab> {
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
                          'Apps',
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      shadowColor: Theme.of(context).accentColor,
                      color: Theme.of(context).accentColor,
                      elevation: 8,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Text(
                          "Search for app",
                          style: TextStyle(
                              fontFamily: "ProximaBold",
                              fontSize: 22,
                              color: MyColors.textSelectionColor),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 180,
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                              itemCount: apps.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
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
                                                  Icon(
                                                    Icons.lock_outline,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    size: 30,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ],
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
