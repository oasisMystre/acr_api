import 'package:acr_api/objects/Artist.dart';
import 'package:acr_api/objects/ExternalMetadata.dart';

class Metadata {
  final List<Artist> artist;
  final String name, isrc, type;
  final int durationMs, trackNumber;
  final ExternalMetadata externalMetadata;

  const Metadata(
    this.name,
    this.durationMs,
    this.trackNumber,
    this.isrc,
    this.artist,
    this.externalMetadata,
    this.type,
  );

  factory Metadata.fromJson(Map<String, dynamic> data) {
    return Metadata(
      data["name"],
      data["duration_ms"],
      data["track_number"],
      data["isrc"],
      List<Artist>.from(
        data["artists"].map((artist) => Artist.fromJson(artist)),
      ),
      ExternalMetadata.fromJson(data["external_metadata"]),
      data["type"],
    );
  }
}
