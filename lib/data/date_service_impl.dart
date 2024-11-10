import 'package:challenge_365d/domain/date_service.dart';

class DateServiceImpl implements DateService {
  @override
  DateTime getCurrentUTCDate() => DateTime.now();
}
