import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:parentol/modal_class/childmodel.dart';
import 'package:parentol/screens/adminaccess.dart';
import 'package:parentol/screens/setup.dart';
import 'package:parentol/utils/MyColors.dart';
import 'package:parentol/utils/header.dart';
import 'package:http/http.dart' as http;

class SelectChildsPhoneChildeSide extends StatefulWidget {
  @override
  _SelectChildsPhoneChildeSideState createState() =>
      _SelectChildsPhoneChildeSideState();
}

class _SelectChildsPhoneChildeSideState
    extends State<SelectChildsPhoneChildeSide> {
  var data;
  String email = "mm@gmail.com";
  List<ChildModel> children = new List();
  Future getData() async {
    //String url=""
    //  print("https://parentol.seruce.com/api/child?email=${email}");
    http.Response response = await http
        .get("https://parentol.seruce.com/api/child?email=${email}");
    print(response.statusCode);
    if (response.statusCode == 200) {
      data = response.body; //store response as string
      // print(data);
      var jsonData = json.decode(data);

      setState(() {
        children = childModelListFromJson(data);
      });
      print(children);
    } else {
      print(response.statusCode);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  String dropdownValue;
  String text =
      "Did you create a Child\'s Phone in your Parent\'s Phone? Crerate First one and then try here again";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Text(
                      "Select Child\'s phone",
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ProximaBold',
                          color: MyColors.textSelectionColor),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Proxima',
                          color: MyColors.textSelectionColor),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      padding: EdgeInsets.all(18),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: dropdownValue,
                        icon: Icon(Icons.keyboard_arrow_down),
                        iconSize: 34,

                        // elevation: 5,
                        hint: Text('Select Child\'s Phone'),
                        style: TextStyle(color: Colors.black, fontSize: 22.0),
                        // style: TextStyle(fontSize: 30),
                        underline: Container(
                          height: 2,
                          color: MyColors.primaryColor,
                        ),
                        items: children.map((list) {
                          return DropdownMenuItem(
                            value: list.id.toString(),
                            child: Text(list.name),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            dropdownValue = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: FlatButton(
                        onPressed: () async {
                          print('pressed childeren');

                          Get.to(AdminAccess());
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
                              "Next",
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
            )
          ],
        ),
      ),
    );
  }
}
