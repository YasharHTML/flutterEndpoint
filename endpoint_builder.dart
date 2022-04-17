// ignore_for_file: unused_import

import 'api_consts.dart';
import 'api_schema.dart';
import 'api/base_api_class.dart';
import 'api/api_economy/base_api_economy.dart';
import 'api/api_auth/api_auth_login/api_auth_login.dart';
import 'api/api_auth/api_auth_register/api_auth_register.dart';
import 'api/api_client/api_client_email/api_client_email.dart';
import 'api/api_client/api_client_phone/api_client_phone.dart';
import 'api/api_economy/api_economy_money/api_economy_money.dart';
import 'api/api_client/base_api_client.dart';


class EndpointBuilder {
  String _apiSchema = "https"; 
  String _domain = "example.com";
  String _path = "/api/v1";
  String _apiKey = "";
  String _apiInfo = "";
  List<String> _args = []; 
  late String _endpointBase;

  String get endpointBase => _endpointBase;
  String? get apiSchema => _apiSchema;
  String? get domain => _domain;
  List<String> get args => _args;
  String? get path => _path;
  String? get apiKey => _apiKey;
  String? get apiInfo => _apiInfo;


  void setSchema({ApiSchema? schema}) {
    this._apiSchema = schema?.name ?? ApiSchema.https.name;
    _updateEndpointBase();
  }

  void setDomain({String? domain}) {
    this._domain = domain ?? ApiConst.domain;
    _updateEndpointBase();
  }

  void setPath({String? path}) {
    this._path = path ?? "/" + ApiConst.indentifier + "/" + ApiConst.version;
    _updateEndpointBase();
  }

  void _updateEndpointBase() {
    this._endpointBase = this._apiSchema + "://" + this._domain + this._path + "/" + this._apiKey + "/" + this._apiInfo;
  }

  EndpointBuilder addArg(String arg) {
    this._args.add(arg);
    return this;
  }

  void setApiData({ApiKeySchema? key}) {
    this._apiKey = key?.key ?? "";
    this._apiInfo = key?.info ?? "";
    _updateEndpointBase();
  }

  String build() {
    return this.endpointBase + "/" + this._args.join("/");
  }

  void reset() {
    this._apiSchema = "https"; 
    this._domain = "example.com";
    this._path = "/api/v1";
    this._apiKey = "";
    this._args = []; 
    this._endpointBase = "";
  }

  void partialReset() {
    this._args = []; 
  }
}




void main() {
  EndpointBuilder ac = new EndpointBuilder();
  ac.setSchema(schema: ApiSchema.https);
  ac.setDomain(domain: "mrbeast.org");
  ac.setPath();
  ac.setApiData(key: ApiAuthLogin());
  ac.addArg("1");
  print(ac.build());
}