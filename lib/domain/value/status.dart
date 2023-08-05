enum Status {
  unconsume('unconsume'),
  consumed('consumed'),
  loss('loss');

  final String value;

  const Status(this.value);

  factory Status.from(String value) {
    switch (value) {
      case 'unconsume':
        return Status.unconsume;
      case 'consumed':
        return Status.consumed;
      case 'loss':
        return Status.loss;
      default:
        throw UnimplementedError();
    }
  }
}
