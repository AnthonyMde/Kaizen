import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/domain/usecases/get_account_use_case.dart';

final getAccountUseCaseProvider = Provider((ref) => GetAccountUseCase(ref));
