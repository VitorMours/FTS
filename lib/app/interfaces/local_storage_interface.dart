abstract class ILocalStorage {
  Future get(String key);
  Future delete(String key);
  Future create(String key, dynamic value);
  Future update(String key, dynamic value);
}
