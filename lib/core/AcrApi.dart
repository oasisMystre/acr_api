import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' show get;

import '../objects/Metadata.dart';

class AcrApi {
  final String accessToken;
  static const String baseUrl = "https://eu-api-v2.acrcloud.com";

  const AcrApi(this.accessToken);

  Future<List<Metadata>> getSongMeta(
    String acrId, {
    String platforms = "spotify",
  }) {
    final Map<String, String> headers = {
      "Authorization": "Bearer $accessToken"
    };

    final Uri uri = Uri.parse(
        "$baseUrl/api/external-metadata/tracks?acr_id=$acrId&platforms=$platforms");

    return get(uri, headers: headers).then((response) {
      if (response.statusCode == HttpStatus.ok) {
        Map<String, dynamic> json = jsonDecode(response.body);

        return List<Metadata>.from(
          json["data"].map((metadata) => Metadata.fromJson(metadata)),
        );
      } else {
        return Future.error(Error());
      }
    });
  }
}
