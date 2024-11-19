import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/data/repositories/account_repository_impl.dart';
import 'package:kaizen/domain/repositories/login_repository.dart';

final accountRepositoryProvider =
    Provider<AccountRepository>((ref) => AccountRepositoryImpl(ref));
