import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/data/local/users_local_db.dart';

final usersLocalDBProvider = Provider<UsersLocalDB>((ref) => UsersLocalDB());