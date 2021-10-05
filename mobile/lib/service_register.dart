import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Service {
  Dio dio = new Dio();

  register(userAccType, userAccNumber, userIdType, userIdNumber, userEmail,
      userPhone, userPassword, userConfirmPassword) async {
    try {
      return await dio.post('http://10.0.2.2:5000/user/userregister',
          data: {
            'userAccType': userAccType,
            'userAccNumber': userAccNumber,
            'userIdType': userIdType,
            'userIdNumber': userIdNumber,
            'userEmail': userEmail,
            'userPhone': userPhone,
            'userPassword': userPassword,
            'userConfirmPassword': userConfirmPassword
          },
          options: Options(contentType: Headers.jsonContentType));
    } on DioError catch (e) {
      Fluttertoast.showToast(
          msg: e.response!.data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}
