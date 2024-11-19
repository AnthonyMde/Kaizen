import 'package:kaizen/data/local/sembast_manager.dart';
import 'package:sembast/sembast.dart';

class UsersLocalDB {
  static const _accountFileName = 'account.db';
  static const _accountKey = 'account';
  final _store = StoreRef.main();
  late Future<Database> _db;

  UsersLocalDB() {
      _db = SembastManager.instance.openDatabase(_accountFileName);
  }

  Future<void> saveAccount(String accountName) async {
    final db = await _db;
    _store.record(_accountKey).put(db, accountName);
  }

  Future<String?> getAccount() async {
    final db = await _db;
    final account = await _store.record(_accountKey).get(db) as String?;
    return account;
  }
}
