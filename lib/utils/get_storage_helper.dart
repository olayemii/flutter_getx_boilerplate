import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

//Helper for GetStorage
class GetStorageHelper {
  static final GetStorage _box = GetStorage();

  GetStorage get box => _box;

  static void write(String key, dynamic value) {
    _box.write(key, value);
  }

  static dynamic read(String key, dynamic defaultValue) {
    dynamic value = _box.read(key);

    return value ?? defaultValue;
  }

  static bool remove(String key) {
    _box.remove(key);
    return true;
  }

  static bool empty() {
    _box.erase();
    return true;
  }

  static void list(VoidCallback callback) {
    _box.listen(callback);
  }
}
