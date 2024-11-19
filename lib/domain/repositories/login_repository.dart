abstract class AccountRepository {
  Future<void> login(String name);

  Future<String?> getAccount();
}
