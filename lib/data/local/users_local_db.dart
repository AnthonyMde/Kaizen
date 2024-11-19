import 'package:flutter/cupertino.dart';
import 'package:kaizen/data/local/sembast_manager.dart';
import 'package:kaizen/domain/models/challenger.dart';
import 'package:sembast/sembast.dart';

class UsersLocalDB {
  static const _accountFileName = 'account.db';
  static const _accountKey = 'account';
  final _store = StoreRef.main();
  late Future<Database> _db;

  UsersLocalDB() {
    _db = SembastManager.instance.openDatabase(_accountFileName);
  }

  Future<void> saveAccount(Challenger challenger) async {
    final db = await _db;
    _store.record(_accountKey).put(db, challenger.toJson());
  }

  Future<Challenger?> getAccount() async {
    final db = await _db;
    final accountJson =
        await _store.record(_accountKey).get(db) as Map<String, dynamic>?;
    final account = accountJson != null ? Challenger.fromJson(accountJson) : null;
    debugPrint("DEBUG: account is $account");
    return account;
  }
}
