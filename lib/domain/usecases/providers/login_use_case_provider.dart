import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/domain/usecases/login_use_case.dart';

final loginUseCaseProvider = Provider((ref) => LoginUseCase(ref));