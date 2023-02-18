class AppData {
  final dynamic id;
  final String link;
  final String? preview;

  const AppData(this.id, this.link, this.preview);

  factory AppData.fromJson(Map<String, dynamic> data) {
    return AppData(
      data["id"],
      data["link"],
      data["preview"],
    );
  }
}
