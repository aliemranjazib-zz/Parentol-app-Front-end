import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parentol/modal_class/modal.dart';
import 'package:parentol/utils/MyColors.dart';

class Subscription extends StatefulWidget {
  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  List<Subscribe> litems = [
    Subscribe('Free', "Trial", "12", "month"),
    Subscribe('Monthly', "\$4.99", "29", "month"),
    Subscribe('Yearly', "\$39.99", "329", "month")
  ];

  List<bool> isHighlighted = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
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
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child: Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 1,
                            itemBuilder: (BuildContext ctxt, int index) {
                              return GestureDetector(
                                onTap: () {
                                  for (int i = 0;
                                      i < isHighlighted.length;
                                      i++) {
                                    setState(() {
                                      print("done");
                                      if (index == i) {
                                        isHighlighted[index] = true;
                                      } else {
                                        //the condition to change the highlighted item
                                        isHighlighted[i] = false;
                                      }
                                    });
                                  }
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: Card(
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          side: new BorderSide(
                                              color: isHighlighted[index]
                                                  ? Theme.of(context)
                                                      .buttonColor
                                                  : Colors.white,
                                              width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                        ),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          padding: EdgeInsets.all(10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                litems[0].name,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontFamily: 'ProximaBold',
                                                    color: MyColors
                                                        .textSelectionColor),
                                              ),
                                              Text(
                                                litems[0].price,
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontFamily: 'ProximaBold',
                                                    color: Theme.of(context)
                                                        .primaryColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: Card(
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          side: new BorderSide(
                                              color: isHighlighted[index]
                                                  ? Theme.of(context)
                                                      .buttonColor
                                                  : Colors.white,
                                              width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                        ),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          padding: EdgeInsets.all(10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                litems[1].name,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontFamily: 'ProximaBold',
                                                    color: MyColors
                                                        .textSelectionColor),
                                              ),
                                              Text(
                                                litems[1].price,
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontFamily: 'ProximaBold',
                                                    color: Theme.of(context)
                                                        .primaryColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
