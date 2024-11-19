import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast_io.dart';

class SembastManager {
  static final SembastManager _instance =
      SembastManager._internal();

  SembastManager._internal();

  static SembastManager get instance => _instance;

  Future<Database> openDatabase(String fileName) async {
    final dir = await getApplicationDocumentsDirectory();
    await dir.create(recursive: true);
    final dbPath = "${dir.path}/$fileName";
    return databaseFactoryIo.openDatabase(dbPath);
  }
}
