import '../base_api_class.dart';


abstract class ApiAuth implements ApiKeySchema {
  String? _key = "auth";
  String? _info; 
  String? get info => _info;
  String? get key => _key; 
}