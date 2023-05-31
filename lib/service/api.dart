import 'package:dio/dio.dart';

import '../dio/dio.dart';

class Api {
  final DioClient dioClient;

  Api(this.dioClient);

  Future<Response> fetchApiRequest() async {
    try {
      final response = await dioClient.get(
          'https://api.themoviedb.org/3/trending/movie/day?language=en-US');
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
