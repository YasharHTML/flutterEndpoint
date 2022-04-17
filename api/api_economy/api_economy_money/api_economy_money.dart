import '../api_economy_schema.dart';
import '../base_api_economy.dart';

class ApiEconomyMoney implements ApiEconomy {
  String? info = ApiEconomySchema.dollar.name;
  String? _key = "economy";
  String? phone;
  String? get key => _key;
  set key(String? value) => _key = value;
}