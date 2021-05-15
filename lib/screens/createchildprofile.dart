import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:parentol/modal_class/childmodel.dart';
import 'package:parentol/remote_services/Services.dart';
import 'package:parentol/utils/MyColors.dart';
import 'package:parentol/utils/customewidgets.dart';
import 'package:parentol/utils/header.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'addchilde.dart';


class CreateChildProfile extends StatefulWidget {
  @override
  _CreateChildProfileState createState() => _CreateChildProfileState();
}

class _CreateChildProfileState extends State<CreateChildProfile> {
  TextEditingController name = TextEditingController();
  TextEditingController pin = TextEditingController();
  Future<ChildModel> data;
  Services service=Services();
  //AuthService auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Header(),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40, top: 15),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Text(
                            "Child\'s Profile",
                            style: texttheme.headline1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 60.0,
                              child: InputBox(
                                controller: name,
                                labeltext: 'Child\'s Name',
                              )),
                          Container(
                              child: InputBox(
                            controller: pin,
                            labeltext: 'Child\'s Pin',
                          )),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Select an avatar",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Proxima',
                                color: Colors.grey),
                          ),
                          Container(
                            height: 270,
                            child: GridView.count(
                              crossAxisCount: 4,
                              padding: const EdgeInsets.all(0.0),
                              children: new List<Widget>.generate(12, (index) {
                                return new GridTile(
                                    child: Container(
                                        padding: EdgeInsets.only(
                                            top: 0, left: 6, right: 6),
                                        child: Image.asset(
                                            "assets/avatar_cat.png")));
                              }),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              verticalDirection: VerticalDirection.down,
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 45,
                                    child: CustomButton(
                                      title: "Next",
                                      onPressed: () async {
                                        // Get.snackBar();
                                        if (name.text.isEmpty &&
                                            pin.text.length < 6) {
                                          Get.snackbar('', 'invalid value');
                                          print('not true');
                                        } else {
                                          data = service.createChild(
                                              name.text, pin.text);
                                         
                                        }
                                      },
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
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
