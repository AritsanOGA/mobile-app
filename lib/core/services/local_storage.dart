import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorageService {
  const LocalStorageService();

  Future<void> saveToDisk<T>(String key, T content);

  Object? getFromDisk(String key);

  Future<bool> removeFromDisk(String key);
}

class LocalStorageServiceImpl implements LocalStorageService {
  const LocalStorageServiceImpl(this._preferences);

  final SharedPreferences _preferences;

  @override
  Future<void> saveToDisk<T>(String key, T content) async {
    if (content is String) {
      await _preferences.setString(key, content);
    }
    if (content is bool) {
      await _preferences.setBool(key, content);
    }
    if (content is int) {
      await _preferences.setInt(key, content);
    }
    if (content is double) {
      await _preferences.setDouble(key, content);
    }
    if (content is List<String>) {
      await _preferences.setStringList(key, content);
    }
  }

  @override
  Object? getFromDisk(String key) {
    final value = _preferences.get(key);
    return value;
  }

  @override
  Future<bool> removeFromDisk(String key) async {
    final value = await _preferences.remove(key);
    return value;
  }
}
