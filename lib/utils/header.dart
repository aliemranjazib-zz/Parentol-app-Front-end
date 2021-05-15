import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Row(
          children: <Widget>[
            Container(
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).buttonColor, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  padding:
                      EdgeInsets.only(left: 6, right: 0, bottom: 2, top: 2),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Theme.of(context).buttonColor,
                    size: 18,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Spacer(),
            Container(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  "assets/parentol_logo.png",
                  color: Theme.of(context).primaryColor,
                  width: 140,
                )),
            Spacer(),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}
