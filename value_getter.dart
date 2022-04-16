import 'api_schema.dart';

extension ValueGetter on ApiSchema {
  String get name {
    switch (this) {
      case ApiSchema.http:
        return 'http';
      case ApiSchema.https:
        return 'https';
      default:
        return 'http';
    }
  }
}