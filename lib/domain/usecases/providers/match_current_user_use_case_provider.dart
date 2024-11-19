import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/domain/usecases/match_current_user_use_case.dart';

final matchCurrentUserUseCaseProvider =
    Provider((ref) => MatchCurrentUserUseCase(ref));
