import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_auth/services/user_service.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});

final serviceProvider = Provider<UserService>((ref) {
  final dio = ref.read(dioProvider);
  return UserService(dio: dio);
});
