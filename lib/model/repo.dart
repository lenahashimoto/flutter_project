class Repo {
  String name;
  String displayName;
  String shortDescription;

  Repo.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        displayName = json['display_name'],
        shortDescription = json['short_description'];
}