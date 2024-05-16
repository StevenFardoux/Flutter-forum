import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final _storage = FlutterSecureStorage();
  static const _keyEmail = 'email';
  static const _keyLastName = 'lastName';
  static const _keyfirstName = 'firstName';
  static const _keyPassword = 'password';
  static const _keyToken = 'token';

  Future<void> saveCredentials(String email, String lastName, String firstName, String password) async {
    await _storage.write(key: _keyEmail, value: email);
    await _storage.write(key: _keyLastName, value: lastName);
    await _storage.write(key: _keyfirstName, value: firstName);
    await _storage.write(key: _keyPassword, value: password);
  }

  Future<void> saveToken(String token) async {
    await _storage.write(key: _keyToken, value: token);
  }

  Future<Map<String, String?>> readCredentials() async {
    String? email = await _storage.read(key: _keyEmail);
    String? lastName = await _storage.read(key: _keyLastName);
    String? firstName = await _storage.read(key: _keyfirstName);
    String? password = await _storage.read(key: _keyPassword);
    return {
      'email': email,
      'lastName': lastName,
      'firstName': firstName,
      'password': password,
    };
  }

  Future<String?> readToken() async {
    return await _storage.read(key: _keyToken);
  }

  Future<void> deleteCredentials() async {
    await _storage.delete(key: _keyEmail);
    await _storage.delete(key: _keyLastName);
    await _storage.delete(key: _keyfirstName);
    await _storage.delete(key: _keyPassword);
    await _storage.delete(key: _keyToken);
  }
}
