import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parentol/utils/MyColors.dart';

class TimeTab extends StatefulWidget {
  @override
  TimeTabState createState() {
    return new TimeTabState();
  }
}

class TimeTabState extends State<TimeTab> {
  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  Color mainColor = Color(0xff41b781);
  List<String> days = ["M", "T", "W", "T", "F", "S", "S"];
  final List<String> items = <String>[
    'Working Days',
    'Weekends',
    'Special Days'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
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
                          'Time',
                          style: TextStyle(
                              fontSize: 24.0,
                              fontFamily: 'ProximaBold',
                              color: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  )
                                ],
                                //color: colorPrimary
                              ),
                              child: Card(
                                  //elevation: 5,
                                  //shadowColor: Colors.white,
                                  // shape: RoundedRectangleBorder(
                                  //   borderRadius: BorderRadius.circular(25.0),
                                  // ),
                                  // color: Colors.white,
                                  child: Container(
                                      child: Column(children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 20, bottom: 0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        items[index],
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontFamily: 'ProximaBold',
                                            color: MyColors.textSelectionColor),
                                      ),
                                      Spacer(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Screen Time',
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                fontFamily: 'Proxima',
                                                color: MyColors
                                                    .textSelectionColor),
                                          ),
                                          Text(
                                            '10:03',
                                            style: TextStyle(
                                                fontSize: 32.0,
                                                fontFamily: 'ProximaBold',
                                                color: Theme.of(context)
                                                    .buttonColor),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 00, bottom: 0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Bed Time start',
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                fontFamily: 'Proxima',
                                                color: MyColors
                                                    .textSelectionColor),
                                          ),
                                          Text(
                                            '20:03',
                                            style: TextStyle(
                                                fontSize: 26.0,
                                                fontFamily: 'ProximaBold',
                                                color: Theme.of(context)
                                                    .primaryColor),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Bed Time end',
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                fontFamily: 'Proxima',
                                                color: MyColors
                                                    .textSelectionColor),
                                          ),
                                          Text(
                                            '10:03',
                                            style: TextStyle(
                                                fontSize: 26.0,
                                                fontFamily: 'ProximaBold',
                                                color: Theme.of(context)
                                                    .primaryColor),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print('tapped');
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        top: 0,
                                        bottom: 10),
                                    height: 50,
                                    child: GridView.count(
                                      crossAxisCount: 7,
                                      children:
                                          new List<Widget>.generate(7, (index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              onTap:
                                              () => _onSelected(index);
                                            });
                                          },
                                          child: new Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                color: Colors.amber),
                                            margin: EdgeInsets.all(8),
                                            child: Text(
                                              days[index],
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontFamily: "ProximaBold"),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  ),
                                ),
                              ]))));
                        }),
                  ),
                  SizedBox(
                    height: 55,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
