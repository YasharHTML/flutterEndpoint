import '../api_auth_schema.dart';
import '../base_api_auth.dart';

class ApiAuthRegister implements ApiAuth {
  String? info = ApiAuthSchema.register.name;
  String? _key = "auth";
  String? get key => _key;
  set key(String? value) => _key = value;
}