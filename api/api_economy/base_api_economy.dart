import '../base_api_class.dart';


abstract class ApiEconomy implements ApiKeySchema {
  String? _key = "economy";
  String? _info;
  String? get info => _info;
  String? get key => _key;
}