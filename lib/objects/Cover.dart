class Cover {
  final String small, medium, large;

  const Cover(
    this.small,
    this.medium,
    this.large,
  );

  factory Cover.fromJson(Map<String, dynamic> data) {
    return Cover(
      data["small"],
      data['medium'],
      data["large"],
    );
  }
}
