import 'package:challenge_365d/data/date_service_impl.dart';
import 'package:challenge_365d/domain/date_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dateServiceProvider = Provider<DateService>((ref) => DateServiceImpl());