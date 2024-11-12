import 'package:kaizen/domain/date_service.dart';

class DateServiceImpl implements DateService {
  @override
  DateTime getCurrentUTCDate() => DateTime.now();

  @override
  int getPastChallengeDays() {
    final start = DateTime(2024, 11, 05);
    final now = DateTime.now();
    return now.difference(start).inDays;
  }
}
