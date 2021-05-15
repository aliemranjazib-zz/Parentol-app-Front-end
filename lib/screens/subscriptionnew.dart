import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parentol/modal_class/modal.dart';
import 'package:parentol/utils/MyColors.dart';

class Subscription extends StatefulWidget {
  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  String txt1 = 'your current plan is free plan';
  String txt2 = '';
  String txt3 = '';
  String txt4 = '';
  String txt5 = '';
  String txt6 = '';
  bool isActive = false;
  List<Subscribe> litems = [
    Subscribe('Free Plan:', "Trial", "12", ""),
    Subscribe('Monthly Plan:', "\$4.99", "29", "month"),
    Subscribe('Yearly Plan:', "\$39.99", "329", "month"),
    Subscribe('Lifetime Plan:', "\$59.99", "329", "")
  ];
  List<String> it = ['Free', 'Monthly', 'Monthly'];

  List<bool> isHighlighted = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
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
              padding: EdgeInsets.only(left: 12, right: 12),
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
                          'Subscription',
                          style: TextStyle(
                              fontSize: 24.0,
                              fontFamily: 'ProximaBold',
                              color: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Choose your plan. You can upgrade and downgrade anytime and it will be changed after last day.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Proxima',
                        color: MyColors.textSelectionColor),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // testing cards
                  Padding(
                    padding: EdgeInsets.all(14),
                    child: Container(
                      child: Column(
                        children: [
                          Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              side: new BorderSide(
                                  color: isHighlighted[0]
                                      ? Theme.of(context).buttonColor
                                      : Colors.white,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            // color: isActive ? Colors.blue : Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                txt1 = "Your Current plan has ";
                                txt2 = "12 days ";
                                txt3 =
                                    "left. After expiration your plan has been paused or changed to the next plan you purchased.Each plan does include upto ";
                                txt4 = "5 devices,App blocking";
                                txt5 = " and ";
                                txt6 = "GPS Location";

                                setState(() {
                                  isHighlighted[0] = true;
                                  isHighlighted[1] = false;
                                  isHighlighted[2] = false;
                                  isHighlighted[3] = false;
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 18, 20, 18),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      litems[0].name,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: 'ProximaBold',
                                          color: MyColors.textSelectionColor),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          litems[0].price,
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontFamily: 'ProximaBold',
                                              color: Theme.of(context)
                                                  .buttonColor),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              side: new BorderSide(
                                  color: isHighlighted[1]
                                      ? Theme.of(context).buttonColor
                                      : Colors.white,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: InkWell(
                              onTap: () {
                                txt1 = "Your Current plan has ";
                                txt2 = "20 days ";
                                txt3 =
                                    "left. After expiration your plan has been paused or changed to the next plan you purchased.Each plan does include upto ";
                                txt4 = "5 devices,App blocking";
                                txt5 = " and ";
                                txt6 = "GPS Location";
                                setState(() {
                                  if (isHighlighted[1] = true) {
                                    isHighlighted[0] = false;
                                    isHighlighted[2] = false;
                                    isHighlighted[3] = false;
                                  } else {
                                    print('next');
                                  }
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 12, 20, 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      litems[1].name,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: 'ProximaBold',
                                          color: MyColors.textSelectionColor),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          litems[1].price,
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontFamily: 'ProximaBold',
                                              color: Theme.of(context)
                                                  .buttonColor),
                                        ),
                                        Text(
                                          'month',
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              fontFamily: 'ProximaBold',
                                              color: Theme.of(context)
                                                  .primaryColor),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: new BorderSide(
                                  color: isHighlighted[2]
                                      ? Theme.of(context).buttonColor
                                      : Colors.white,
                                  width: 2.0),
                            ),
                            child: InkWell(
                              onTap: () {
                                txt1 = "Your Current plan has ";
                                txt2 = "300 days ";
                                txt3 =
                                    "left. After expiration your plan has been paused or changed to the next plan you purchased.Each plan does include upto ";
                                txt4 = "5 devices,App blocking";
                                txt5 = " and ";
                                txt6 = "GPS Location";
                                setState(() {
                                  if (isHighlighted[2] = true) {
                                    isHighlighted[0] = false;
                                    isHighlighted[1] = false;
                                    isHighlighted[3] = false;
                                  }
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 12, 20, 12),
                                // padding: const EdgeInsets,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      litems[2].name,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: 'ProximaBold',
                                          color: MyColors.textSelectionColor),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          litems[2].price,
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontFamily: 'ProximaBold',
                                              color: Theme.of(context)
                                                  .buttonColor),
                                        ),
                                        Text(
                                          'month',
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              fontFamily: 'ProximaBold',
                                              color: Theme.of(context)
                                                  .primaryColor),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: new BorderSide(
                                  color: isHighlighted[3]
                                      ? Theme.of(context).buttonColor
                                      : Colors.white,
                                  width: 2.0),
                            ),
                            child: InkWell(
                              onTap: () {
                                txt1 = "Your Current plan is ";
                                txt2 = "Lifetime Plan ";
                                txt3 =
                                    "left. After expiration your plan has been paused or changed to the next plan you purchased.Each plan does include upto ";
                                txt4 = "5 devices,App blocking";
                                txt5 = " and ";
                                txt6 = "GPS Location";
                                setState(() {
                                  if (isHighlighted[3] = true) {
                                    isHighlighted[0] = false;
                                    isHighlighted[1] = false;
                                    isHighlighted[2] = false;
                                  }
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 18, 20, 18),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      litems[3].name,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: 'ProximaBold',
                                          color: MyColors.textSelectionColor),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          litems[3].price,
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontFamily: 'ProximaBold',
                                              color: Theme.of(context)
                                                  .buttonColor),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              children: [
                                RichText(
                                  textAlign: TextAlign.center,
                                  softWrap: true,
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: txt1,
                                        style: TextStyle(
                                          color: MyColors.textSelectionColor,
                                          fontFamily: 'Proxima',
                                        )),
                                    TextSpan(
                                        text: txt2,
                                        style: TextStyle(
                                          color: MyColors.textSelectionColor,
                                          fontFamily: 'ProximaBold',
                                        )),
                                    TextSpan(
                                        text: txt3,
                                        style: TextStyle(
                                          color: MyColors.textSelectionColor,
                                          fontFamily: 'Proxima',
                                        )),
                                    TextSpan(
                                        text: txt4,
                                        style: TextStyle(
                                          color: MyColors.textSelectionColor,
                                          fontFamily: 'ProximaBold',
                                        )),
                                    TextSpan(
                                        text: txt5,
                                        style: TextStyle(
                                          color: MyColors.textSelectionColor,
                                          fontFamily: 'Proxima',
                                        )),
                                    TextSpan(
                                        text: txt6,
                                        style: TextStyle(
                                          color: MyColors.textSelectionColor,
                                          fontFamily: 'ProximaBold',
                                        )),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 250,
                            height: 45,
                            child: FlatButton(
                              onPressed: () {
                                // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: Setup()));
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  side: BorderSide(
                                      color: Theme.of(context).buttonColor)),
                              color: Theme.of(context).buttonColor,
                              textColor: Colors.white,
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Apply",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'ProximaBold',
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Container(
                  //   child: Column(
                  //     children: [
                  //       ListView.builder(
                  //         itemCount: litems.length,
                  //         shrinkWrap: true,
                  //         itemBuilder: (context, index) {
                  //           return Card(
                  //             elevation: 2,
                  //             shape: RoundedRectangleBorder(
                  //               side: new BorderSide(
                  //                   color: isHighlighted[index]
                  //                       ? Theme.of(context).buttonColor
                  //                       : Colors.white,
                  //                   width: 2.0),
                  //               borderRadius: BorderRadius.circular(10.0),
                  //             ),
                  //             child: InkWell(
                  //               onTap: () {
                  //                 for (int i = 0;
                  //                     i < isHighlighted.length;
                  //                     i++) {
                  //                   setState(() {
                  //                     print("done");
                  //                     if (index == i) {
                  //                       isHighlighted[index] = true;
                  //                     } else {
                  //                       //the condition to change the highlighted item
                  //                       isHighlighted[i] = false;
                  //                     }
                  //                   });
                  //                 }
                  //                 // print(litems[index].name);
                  //                 setState(() {
                  //                   if (litems[index].name == 'Free Plan:') {
                  //                     print(litems[index].name);
                  //                     desc = 'your current plan is free plan ';
                  //                   } else if (litems[index].name ==
                  //                       'Monthly Plan:') {
                  //                     desc =
                  //                         'your current plan is monthly plan';
                  //                     print(litems[index].name);
                  //                   } else if (litems[index].name == 'Yearly Plan:') {
                  //                     desc = 'your current plan is yearly plan';
                  //                     print(litems[index].name);
                  //                   } else if (litems[index].name == 'Lifetime Plan:') {
                  //                     desc =
                  //                         'your current plan is Lifetime plan';
                  //                     print(litems[index].name);
                  //                   }
                  //                 });
                  //               },
                  //
                  //               //                           <-- Card widget
                  //               child: Padding(
                  //                 padding:
                  //                     const EdgeInsets.fromLTRB(20, 8, 20, 8),
                  //                 child: Row(
                  //                   mainAxisAlignment:
                  //                       MainAxisAlignment.spaceBetween,
                  //                   children: <Widget>[
                  //                     Text(
                  //                       litems[index].name,
                  //                       textAlign: TextAlign.center,
                  //                       style: TextStyle(
                  //                           fontSize: 20.0,
                  //                           fontFamily: 'ProximaBold',
                  //                           color: Theme.of(context)
                  //                               .textSelectionColor),
                  //                     ),
                  //                     Padding(
                  //                       padding:
                  //                           EdgeInsets.fromLTRB(0, 0, 0, 0),
                  //                       child: Column(
                  //                         crossAxisAlignment:
                  //                             CrossAxisAlignment.end,
                  //                         children: [
                  //                           Text(
                  //                             litems[index].price,
                  //                             style: TextStyle(
                  //                                 fontSize: 20.0,
                  //                                 fontFamily: 'ProximaBold',
                  //                                 color: Theme.of(context)
                  //                                     .buttonColor),
                  //                           ),
                  //                           Text(
                  //                             litems[index].month,
                  //                             style: TextStyle(
                  //                                 fontSize: 9.0,
                  //                                 fontFamily: 'Proxima',
                  //                                 color: Theme.of(context)
                  //                                     .primaryColor),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //           );
                  //         },
                  //       ),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Text(
                  //         desc,
                  //         style: TextStyle(
                  //           fontFamily: 'Proxima',
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 30,
                  //       ),
                  //       Container(
                  //         width: MediaQuery.of(context).size.width * 0.7,
                  //         height: 45,
                  //         child: MaterialButton(
                  //             splashColor: Colors.blueAccent,
                  //             color: Theme.of(context).buttonColor,
                  //             shape: RoundedRectangleBorder(
                  //                 borderRadius: BorderRadius.circular(20)),
                  //             child: Text(
                  //               'Apply',
                  //               style: TextStyle(
                  //                 fontSize: 20.0,
                  //                 fontFamily: 'ProximaBold',
                  //                 color: Colors.white,
                  //               ),
                  //             ),
                  //             onPressed: () {}),
                  //       )
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
