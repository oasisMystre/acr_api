import 'package:acr_api/objects/AppData.dart';

class ExternalMetadata {
  final AppData? deezer, youtube, applemusic, spotify;
  const ExternalMetadata(this.deezer, this.youtube, this.applemusic, this.spotify);
  factory ExternalMetadata.fromJson(Map<String, dynamic> data) {
    return ExternalMetadata(
      (data["deezer"]) == null ? null : AppData.fromJson(data["deezer"]),
      (data["youtube"]) == null ? null : AppData.fromJson(data["youtube"]),
      (data["applemusic"]) == null ? null : AppData.fromJson(data["applemusic"]),
      (data["spotify"]) == null ? null : AppData.fromJson(data["spotify"]),
    );
  }
}
