import '../api_client_schema.dart';
import '../base_api_client.dart';

class ApiClientEmail implements ApiClient {
  String? info = ApiClientSchema.email.name;
  String? _key = "client";
  String? email;
  String? get key => _key;
  set key(String? value) => _key = value;
}