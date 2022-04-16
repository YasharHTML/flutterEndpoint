enum api_schema {
  HTTP,
  HTTPS
}

extension api_schemaExtension on api_schema {
  String get name {
    switch (this) {
      case api_schema.HTTP:
        return 'HTTP';
      case api_schema.HTTPS:
        return 'HTTPS';
      default:
        return 'Not-schema';
    }
  }
}