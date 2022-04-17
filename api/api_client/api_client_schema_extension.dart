import 'api_client_schema.dart';

extension ValueGetter on ApiClientSchema {
  String get name {
    switch (this) {
      case ApiClientSchema.email:
        return 'email';
      case ApiClientSchema.phone:
        return 'phone';
    }
  }
}