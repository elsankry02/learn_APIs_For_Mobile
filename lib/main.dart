import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_auth/app.dart';

void main() {
  runApp(ProviderScope(child: const LearnApi()));
}
