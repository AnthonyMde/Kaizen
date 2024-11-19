import 'package:kaizen/domain/models/challenger.dart';

abstract class AccountRepository {
  Future<void> login(Challenger challenger);

  Future<Challenger?> getAccount();
}
