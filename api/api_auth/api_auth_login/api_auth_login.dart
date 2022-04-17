import '../api_auth_schema.dart';
import '../base_api_auth.dart';

class ApiAuthLogin implements ApiAuth {
  String? info = ApiAuthSchema.login.name;
  String? _key = "auth";
  String? get key => _key;
}