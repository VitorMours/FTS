import 'package:shared_preferences/shared_preferences.dart';

import '../interfaces/local_storage_interface.dart';

class SharedPreferencesRepository implements ILocalStorage {
  @override
  Future create(String key, dynamic value) async {
    var shared = await SharedPreferences.getInstance();
  }

  @override
  Future delete(String key) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future get(String key) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future update(String key, dynamic value) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
