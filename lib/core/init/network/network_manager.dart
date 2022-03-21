import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter_application_template_mvvm/core/base/model/base_error.dart';
import 'package:flutter_application_template_mvvm/core/base/model/base_model.dart';

class NetworkManager {
  static NetworkManager? _instance;
  static NetworkManager get instance {
    _instance ??= NetworkManager._init();
    return _instance!;
  }

  NetworkManager._init() {
    final baseOptions =
        BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/');
    _dio = Dio(baseOptions);

    _dio.interceptors.add(InterceptorsWrapper(
      onError: (e, handler) {
        BaseError(e.message);
      },
    ));
  }

  late Dio _dio;

  Future dioGet<T extends BaseModel>(String path, T model) async {
    final response = await _dio.get(path);

    switch (response.statusCode) {
      case HttpStatus.ok:
        final responseBody = response.data;

        if (responseBody is List) {
          return responseBody.map((json) => model.fromJson(json)).toList();
        } else if (responseBody is Map) {
          return model.fromJson(responseBody as Map<String, Object>);
        } else {
          return responseBody;
        }
        break;
      default:
    }
  }
}
