import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../constants.dart';
import '../model/user_model.dart';


class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint); 
      var response = await http.get(url);
      if (response.statusCode == 200) {
      List<UserModel> _model = userModelFromJson(response.body);
      return _model;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  // Future<bool> createProfile(UserModel data) async {
  //   var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
  //   final response = await http.post(
  //     url,
  //     headers: {"content-type": "application/json"},
  //     body: userModelToJson(UserModel),
  //   );
  //   if (response.statusCode == 201) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

Future<http.Response> createAlbum(String title) {
  return http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );
}














// Future<bool> updateProfile(Profile data) async {
//      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
//     final response = await http.put(
      
//       "$url/api/profile/${data.id}",
//       headers: {"content-type": "application/json"},
//       body: profileToJson(data),
//     );
//     if (response.statusCode == 200) {
//       return true;
//     } else {
//       return false;
//     }
//   }
// Future<bool> deleteProfile(int id) async {
//       var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
//     final response = await http.delete(
//       "$url/api/profile/$id",
//       headers: {"content-type": "application/json"},
//     );
//     if (response.statusCode == 200) {
//       return true;
//     } else {
//       return false;
//     }
//   }





}

