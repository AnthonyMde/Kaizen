import 'package:kaizen/data/date_service_impl.dart';
import 'package:kaizen/domain/date_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dateServiceProvider = Provider<DateService>((ref) => DateServiceImpl());