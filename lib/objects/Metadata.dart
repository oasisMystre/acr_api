import 'package:acr_api/objects/Artist.dart';
import 'package:acr_api/objects/ExternalMetadata.dart';

class Metadata {
  final int durationMs;
  final List<Artist> artist;
  final String name, isrc, type;
  final ExternalMetadata externalMetadata;

  const Metadata(
    this.name,
    this.durationMs,
    this.isrc,
    this.artist,
    this.externalMetadata,
    this.type,
  );

  factory Metadata.fromJson(Map<String, dynamic> data) {
    return Metadata(
      data["name"],
      int.parse(data["duration_ms"]),
      data["isrc"],
      List<Artist>.from(
        data["artists"].map((artist) => Artist.fromJson(artist)),
      ),
      ExternalMetadata.fromJson(data["external_metadata"]),
      data["type"],
    );
  }
}
