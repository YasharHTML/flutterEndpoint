import "./api_schema.dart";

class ApiConst {

  static final ApiConst _singleton = ApiConst._internal();

  late String _version;
  late api_schema _apiSchema;
  late String _domain;

  //getters setters
  String get version => _version;
  String get apiSchema => _apiSchema.toString();
  String get domain => _domain;

  void set version(String version) {
    this._version = version;
  }

  void set apiSchema(String apiSchema) {
    if (apiSchema == api_schema.HTTP) {
      this._apiSchema = api_schema.HTTP;
      } else if (apiSchema == api_schema.HTTPS) {
      this._apiSchema = api_schema.HTTPS;
    }
  }

  void set domain(String domain) {
    this._domain = domain;
  }

  factory ApiConst() {

    return _singleton;
  }

  ApiConst._internal();
}