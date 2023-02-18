import 'package:acr_api/objects/Cover.dart';

class Album {
  final Cover covers;
  final String name, releaseDate, cover;

  const Album(
    this.name,
    this.releaseDate,
    this.cover,
    this.covers,
  );

  factory Album.fromJson(Map<String, dynamic> data) {
    return Album(
      data["name"],
      data["release_date"],
      data["cover"],
      Cover.fromJson(data["cocvers"]),
    );
  }
}
