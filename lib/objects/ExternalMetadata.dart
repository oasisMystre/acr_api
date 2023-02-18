import 'package:acr_api/objects/AppData.dart';

class ExternalMetadata {
  final List<AppData>? deezer, youtube, applemusic, spotify;
  const ExternalMetadata(
      this.deezer, this.youtube, this.applemusic, this.spotify);
  factory ExternalMetadata.fromJson(Map<String, dynamic> data) {
    return ExternalMetadata(
      (data["deezer"]) == null
          ? null
          : List<AppData>.from(
              data["deezer"].map((data) => AppData.fromJson(data)),
            ),
      (data["youtube"]) == null
          ? null
          : List<AppData>.from(
              data["youtube"].map((data) => AppData.fromJson(data)),
            ),
      (data["applemusic"]) == null
          ? null
          : List<AppData>.from(
              data["applemusic"].map((data) => AppData.fromJson(data)),
            ),
      (data["spotify"]) == null
          ? null
          : List<AppData>.from(
              data["spotify"].map((data) => AppData.fromJson(data)),
            ),
    );
  }
}
