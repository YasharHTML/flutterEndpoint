import '../api_client_schema.dart';
import '../base_api_client.dart';

class ApiClientPhone implements ApiClient {
  String? info = ApiClientSchema.phone.name;
  String? _key = "client";
  String? phone;
  String? get key => _key;
  set key(String? value) => _key = value;
}