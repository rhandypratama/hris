import 'dart:developer';
import 'dart:io';
import 'dart:convert';
import 'dart:async';
import 'package:hris/networking/custom-exception.dart';
import 'package:hris/utils/constant.dart';
import 'package:http/http.dart' as http;
import 'package:hris/utils/widget-model.dart';

class ApiProvider {
  final String _baseUrl = Url.BASE_URL;

  Future<dynamic> get(String url) async {
    var urlString = Uri.parse(_baseUrl + url);
    var responseJson;
    try {
      final response = await http.get(urlString);
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> post(String url, dynamic body, {bool isAuth = true, bool isContentType = true}) async {
    var urlString = Uri.parse(_baseUrl + url);
    var responseJson;
    try {
      final response = await http.post(urlString, body: body, headers: await getHeaders(auth: isAuth, contentType: isContentType));
      // log('Api post : $urlString, body: $body');
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    // print('responseJSON : $responseJson');
    return responseJson;
  }

  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        print(responseJson);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:

      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:

      default:
        throw FetchDataException('Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}

Future<Map<String, String>> getHeaders({bool auth = true, bool contentType = true}) async {
  var token = await getPreferences('token', kType: 'string') ?? "";
  var headers;
  if (auth) headers['Authorization'] = "Bearer " + token;
  // log("HEADERS: $headers");
  return headers;
}

// class ApiBaseHelper {
//   Future<dynamic> get(String url, {dynamic param = "", bool isAuth = true, bool isContentType = false}) async {
//     var baseUrl = '${Url.baseURL}';
//     var urlString = '$baseUrl$url$param';
//     log('Api get : $urlString');
//     var responseJson;
//     try {
//       final response = await http.get(urlString, headers: await getHeaders(auth: isAuth, contentType: isContentType));
//       responseJson = _returnResponse(response);
//     } on SocketException {
//       throw FetchDataException('No Internet Connection');
//     }
//     print('responseJSON : $responseJson');
//     return responseJson;
//   }

//   Future<dynamic> post(String url, dynamic body, {bool isSociomile = false, bool isAuth = true, bool isContentType = true}) async {
//     var baseUrl = '${isSociomile ? Url.BASE_URL_SOCIOMILE : Url.BASE_URL}';
//     var urlString = '$baseUrl$url';
//     var responseJson;
//     try {
//       final response = await http.post(urlString, body: body, headers: await getHeaders(auth: isAuth, contentType: isContentType));
//       log('Api post : $urlString, body: $body');
// //      print('RESPONSE: $response');
//       responseJson = _returnResponse(response);
//     } on SocketException {
//       print('No Internet Connection');
//       throw FetchDataException('No Internet Connection');
//     }
//     print('responseJSON : $responseJson');
//     return responseJson;
//   }

//   Future<dynamic> put(String url, dynamic body, {bool isSociomile = false}) async {
//     var baseUrl = '${isSociomile ? Url.BASE_URL_SOCIOMILE : Url.BASE_URL}';
//     var urlString = '$baseUrl$url';
//     print('Api Put, url: $urlString');
//     var responseJson;
//     try {
//       final response = await http.put(urlString, body: body, headers: await getHeaders());
//       responseJson = _returnResponse(response);
//     } on SocketException {
//       print('No Internet Connection');
//       throw FetchDataException('No Internet Connection');
//     }
//     print('api put');
//     print("API RESPONSE: " + responseJson.toString());
//     return responseJson;
//   }

//   Future<dynamic> delete(String url, {bool isSociomile = false}) async {
//     var baseUrl = '${isSociomile ? Url.BASE_URL_SOCIOMILE : Url.BASE_URL}';
//     var urlString = '$baseUrl$url';
//     print('Api delete, url: $urlString');
//     var responseJson;
//     try {
//       final response = await http.delete(urlString);
//       responseJson = _returnResponse(response);
//     } on SocketException {
//       print('No Internet Connection');
//       throw FetchDataException('No Internet Connection');
//     }
//     print('api delete');
//     return responseJson;
//   }

//   Future<dynamic> upload(String url, File imageFile , {bool isSociomile = false}) async {

//     var baseUrl = '${isSociomile ? Url.BASE_URL_SOCIOMILE : Url.BASE_URL}';
//     var urlString = '$baseUrl$url';

//     // open a bytestream
//     var stream = new http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
//     // get file length
//     var length = await imageFile.length();

//     // string to uri
//     var uri = Uri.parse('$urlString');
//     print('URL: $uri');

//     // create multipart request
//     var request = new http.MultipartRequest("POST", uri);

//     // multipart that takes file
//     var multipartFile = new http.MultipartFile('filename', stream, length, filename: basename(imageFile.path));

//     var token = await getPreferences('token', kType: 'string') ?? "";

//     var headers = {
//       'Content-Type': 'application/x-www-form-urlencoded',
//       'Accept': 'application/x.paruh.waktu.v2+json',
//       'Accept-Language': 'id',
//       'Authorization': "Bearer $token",
//     };

//     request.headers.addAll(headers);
//     // add file to multipart
//     request.files.add(multipartFile);

//     // send
//     http.StreamedResponse response = await request.send().then((response){
//       if(response.statusCode == 201){
//         print(response.statusCode);
//         print('masuk sini');

//         //     listen for response
//         response.stream.transform(utf8.decoder).listen((value){
//           var responseJson;
//           print('Upload Response: $value');
//           responseJson = json.decode(value);
//           print('json: ${responseJson["data"]["attributes"]["url"]}');
//           savePreferences('urlProfile', stringValue: '${responseJson["data"]["attributes"]["url"]}');
//           return responseJson;
//         });
//       }
//       return null;
//     });

//   }
// }

// Future<Map<String, String>> getHeaders({bool auth = true, bool contentType = true}) async {

//   var token = await getPreferences('token', kType: 'string') ?? "";
//   var headers;
//   // if(contentType == true) {
//   //   headers = {
//   //     'Content-Type': 'application/json',
//   //     'Accept': 'application/x.paruh.waktu.v2+json',
//   //     'Accept-Language': 'id',
//   //   };
//   // } else {
//   //   headers = {
//   //     'Accept': 'application/x.paruh.waktu.v2+json',
//   //     'Accept-Language': 'id',
//   //   };
//   // }

//   if (auth) headers['Authorization'] = "Bearer " + token;
//   log("HEADERS: $headers");
//   return headers;
// }