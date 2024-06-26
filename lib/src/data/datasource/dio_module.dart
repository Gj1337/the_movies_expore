import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movies_expore/src/data/config.dart';

@module
abstract class RegisterModule {
  @singleton
  Dio get dit => Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 3),
          baseUrl: baseUrl,
          headers: {
            'Authorization': 'Bearer $apiReadAccessToken',
            'accept': 'application/json',
          },
        ),
      );
}
