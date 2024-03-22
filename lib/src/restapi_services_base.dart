import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart';

class ApiService {
  static Future<dynamic> getData({
    required String url,
    Map<String, String> header = const {},
  }) async {
    try {
      Response response = await get(Uri.parse(url), headers: header);
      log('GET status: ${response.statusCode}');
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          return jsonDecode(response.body);
        }
        return null;
      }
      throw ApiFailedException(msg: 'failed to get the data :(');
    } on ApiFailedException catch (e) {
      log(e.toString());
      return null;
    }
  }

  static Future<dynamic> postData({
    required String url,
    required Map<String, dynamic> body,
    Map<String, String> header = const {'Content-Type': 'application/json'},
  }) async {
    try {
      Response response = await post(
        Uri.parse(url),
        body: jsonEncode(body),
        headers: header,
      );

      log('POST status: ${response.statusCode}');

      if (response.statusCode == 200) {
        // Check if response body is not empty and is valid JSON
        if (response.body.isNotEmpty) {
          return jsonDecode(response.body);
        }
        return null;
      }
      throw ApiFailedException(msg: 'failed to post the data :(');
    } on ApiFailedException catch (e) {
      log(e.toString());
      return null;
    }
  }

  static Future<dynamic> updateData(
      {required String url,
      required Map<String, dynamic> body,
      Map<String, String> header = const {
        'Content-Type': 'application/json'
      }}) async {
    try {
      Response response = await put(
        Uri.parse(url),
        body: jsonEncode(body),
        headers: header,
      );
      log('POST status: ${response.statusCode}');
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          return jsonDecode(response.body);
        }
        return null;
      }
      throw ApiFailedException(msg: 'failed to update the data :(');
    } on ApiFailedException catch (e) {
      log(e.toString());
      return null;
    }
  }

  static Future<dynamic> deleteData({
    required String url,
    Map<String, String> header = const {'Content-Type': 'application/json'},
  }) async {
    try {
      Response response = await delete(
        Uri.parse(url),
        headers: header,
      );
      log('POST status: ${response.statusCode}');
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          return jsonDecode(response.body);
        }
        return null;
      }
      throw ApiFailedException(msg: 'failed to delete :(');
    } on ApiFailedException catch (e) {
      log(e.toString());
      return null;
    }
  }
}

class ApiFailedException implements Exception {
  final String msg;
  ApiFailedException({this.msg = ''});
  @override
  String toString() => 'Error: $msg';
}
