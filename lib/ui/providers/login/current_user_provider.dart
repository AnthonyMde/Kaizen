import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/data/repositories/providers/login_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_user_provider.g.dart';

@riverpod
Future<bool> isCurrentUser(Ref ref, String userId) async {
  final account = await ref.watch(accountRepositoryProvider).getAccount();
  return account?.id == userId;
}
