import 'api_economy_schema.dart';

extension ValueGetter on ApiEconomySchema {
  String get name {
    switch (this) {
      case ApiEconomySchema.dollar:
        return 'dollar';
    }
  }
}