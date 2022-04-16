import 'api_consts.dart';
import 'api_schema.dart';


class EndpointBuilder {
  String _apiSchema = "https"; 
  String _domain = "example.com";
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

  void _updateEndpointBase() {
    this._endpointBase = this._apiSchema + "://" + this._domain;
  }

  EndpointBuilder addArg(String arg) {
    this._args.add(arg);
    return this;
  }


  String build() {
    return this.endpointBase + this._args.join();
  }
}




void main() {
  EndpointBuilder ac = new EndpointBuilder();
  print(ac.addArg("test").args);
  ac.setSchema(schema: ApiSchema.https);
  ac.setDomain(domain: "mrbeast.org");
  print(ac.build());
}