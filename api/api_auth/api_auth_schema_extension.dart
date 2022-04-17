import 'api_auth_schema.dart';

extension ValueGetter on ApiAuthSchema {
  String get name {
    switch (this) {
      case ApiAuthSchema.login:
        return 'login';
      case ApiAuthSchema.register:
        return 'register';
    }
  }
}