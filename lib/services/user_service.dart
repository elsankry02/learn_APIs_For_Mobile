import 'package:dio/dio.dart';
import 'package:learn_auth/models/user_model.dart';

class UserService {
  final Dio dio;

  UserService({required this.dio});
  Future<List<UserModel>> getUser() async {
    final response = await dio.get('https://gorest.co.in/public/v2/users');
    final data = response.data as List<String>;
    List<UserModel> user = [];
    for (var oneUser in data) {
      user.add(UserModel.fromJson(oneUser as Map<String, dynamic>));
    }
    return user;
  }
}
