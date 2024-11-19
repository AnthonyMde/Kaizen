import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/data/repositories/challenger_repository_impl.dart';
import 'package:kaizen/domain/repositories/challenger_repository.dart';

final challengerRepositoryProvider =
    Provider<ChallengerRepository>((ref) => ChallengerRepositoryImpl());
