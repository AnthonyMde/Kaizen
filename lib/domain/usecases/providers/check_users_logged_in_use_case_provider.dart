import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/domain/usecases/check_user_logged_in_use_case.dart';

final checkUserLoggedInUseCaseProvider =
    Provider((ref) => CheckUserLoggedInUseCase(ref));
