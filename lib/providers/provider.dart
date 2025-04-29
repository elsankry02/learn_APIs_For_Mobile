import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  Dio().options.baseUrl = 'https://riverpod.dev/docs/introduction/';
  return Dio();
});
