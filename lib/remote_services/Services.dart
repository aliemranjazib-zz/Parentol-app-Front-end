import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:parentol/modal_class/childmodel.dart';
import 'package:parentol/modal_class/signup.dart';
import 'package:get/get.dart';
import 'package:parentol/screens/addchilde.dart';
import 'package:get_storage/get_storage.dart';

class Services {
  final pmail = GetStorage();
  //static var client = http.Client();
  Future<SignUp> createParentAccount(
      String name, String email, String password) async {
    final http.Response response = await http.post(
      'https://parentol.seruce.com/api/register',
      headers: <String, String>{
        'Content-Type': 'application/json;charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'email': email,
        'password': password,
      }),
    );
    if (response.statusCode == 200) {
      return SignUp.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create parent api send data.');
    }
  }

  Future<SignUp> signIn(String email, String password) async {
    //String token = await SignUp().getToken();
    final http.Response response = await http.post(
      'https://parentol.seruce.com/api/login',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      //pmail.write('email', email);
      Get.to(AddChildScreen());
      var res = SignUp.fromJson(jsonDecode(response.body));
      var data = json.decode(response.body);
      var token = data["token"];
      pmail.write('token', token);
      print(data["token"]);
      return res;
    } else {
      Get.snackbar('', 'somthing missing', snackPosition: SnackPosition.BOTTOM);
      throw Exception('Failed to create parent api send data.');
    }
  }

  Future<ChildModel> createChild(String name, String pin) async {
    final key = pmail.read('token');
    final http.Response response = await http.post(
      'https://parentol.seruce.com/api/child/create',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $key'
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'pin': pin,
      }),
    );

    if (response.statusCode == 200) {
      var res = ChildModel.fromJson(jsonDecode(response.body));
      Get.snackbar("as", 'child created', snackPosition: SnackPosition.BOTTOM);
      Get.to(AddChildScreen());
      print('true');

      return res;
    } else {
      Get.snackbar("as", 'child not created',
          snackPosition: SnackPosition.BOTTOM);
      throw Exception('Failed to create parent api send data.');
    }
  }
}
