import 'package:kaizen/data/repositories/date_repository_impl.dart';
import 'package:kaizen/domain/repositories/date_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dateRepositoryProvider = Provider<DateRepository>((ref) => DateRepositoryImpl());