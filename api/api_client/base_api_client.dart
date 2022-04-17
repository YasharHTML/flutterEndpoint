import '../base_api_class.dart';
// import 'api_client_schema.dart';

abstract class ApiClient implements ApiKeySchema {
  String? _key = "client";
  String? _info;
  String? get info => _info;
  String? get key => _key;
}