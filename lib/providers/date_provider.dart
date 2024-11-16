import 'package:kaizen/data/services/date_service_impl.dart';
import 'package:kaizen/domain/services/date_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dateServiceProvider = Provider<DateService>((ref) => DateServiceImpl());