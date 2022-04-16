import 'api_consts.dart';
import 'api_schema.dart';
import 'api_client.dart';
import 'base_api_class.dart';
import 'api_economy.dart';
import 'api_auth.dart';


class EndpointBuilder {
  String _apiSchema = "https"; 
  String _domain = "example.com";
  String _path = "/api/v1";
  String _apiKey = "";
  List<String> _args = []; 
  late String _endpointBase;

  String get endpointBase => _endpointBase;
  String? get apiSchema => _apiSchema;
  String? get domain => _domain;
  List<String> get args => _args;

  void setSchema({ApiSchema? schema}) {
    this._apiSchema = schema?.name ?? ApiSchema.https.name;
    _updateEndpointBase();
  }

  void setDomain({String? domain}) {
    this._domain = domain ?? ApiConst.domain;
    _updateEndpointBase();
  }

  void setPath({String? path}) {
    this._path = path ?? ApiConst.indentifier + "/" + ApiConst.version;
    _updateEndpointBase();
  }

  void _updateEndpointBase() {
    this._endpointBase = this._apiSchema + "://" + this._domain + this._path + "/" + this._apiKey;
  }

  EndpointBuilder addArg(String arg) {
    this._args.add(arg);
    return this;
  }

  void setApiKey({ApiKeySchema? key}) {
    this._apiKey = key?.key ?? "";
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
  ac.setPath(path: "/api/v1");
  ac.setApiKey(key: ApiClient());
  ac.addArg("1");
  print(ac.build());
  ac.partialReset();
  ac.addArg("2");
  print(ac.build());
  ac.reset();
  ac.setApiKey(key: ApiEconomy());
  print(ac.build());
}