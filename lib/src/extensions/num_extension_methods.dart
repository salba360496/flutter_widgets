extension CustomDate on num? {
  /// if value is null or negative or NAN or infinite.
  ///
  /// It will return true.
  bool get isINN {
    if (this == null) {
      return true;
    } else if (this!.isNaN || this!.isNegative || this!.isInfinite) {
      return true;
    } else {
      return false;
    }
  }
}
