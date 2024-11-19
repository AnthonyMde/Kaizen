import 'package:kaizen/domain/repositories/date_repository.dart';

class DateRepositoryImpl implements DateRepository {
  @override
  DateTime getCurrentUTCDate() => DateTime.now();

  @override
  int getPastChallengeDays() {
    final start = DateTime(2024, 11, 05);
    final now = DateTime.now();
    return now.difference(start).inDays;
  }
}
