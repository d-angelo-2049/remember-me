class RememberMeException implements Exception {
  final String message;

  RememberMeException(this.message);

  @override
  String toString() {
    return 'RememberMeException: $message';
  }
}
