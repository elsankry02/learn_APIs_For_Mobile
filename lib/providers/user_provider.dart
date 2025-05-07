import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_auth/models/user_model.dart';
import 'package:learn_auth/providers/provider.dart';

final userProvider = FutureProvider<List<UserModel>>((ref) async {
  final service = ref.read(serviceProvider);

  return await service.getUser();
});
