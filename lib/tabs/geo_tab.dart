import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parentol/utils/MyColors.dart';

class GeoTab extends StatefulWidget {
  @override
  GeoTabState createState() {
    return new GeoTabState();
  }
}

class GeoTabState extends State<GeoTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                                            color:
                                                Theme.of(context).primaryColor,
                                            width: 2),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
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
                                'Geo',
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
                          "Current location",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Proxima',
                              color: MyColors.textSelectionColor),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 150,
                          child: Text(
                            "Bluemen Street 15, 12425 Silicon Valley, USA",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'ProximaBold',
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Text(
                              "Map",
                              style:
                                  TextStyle(fontSize: 28, color: Colors.white),
                            )),
                      ],
                    ),
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
