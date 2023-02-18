class Artist {
  final String name;

  const Artist(this.name);

  factory Artist.fromJson(Map <String, dynamic> data){
    return Artist(data["name"]);
  }
}