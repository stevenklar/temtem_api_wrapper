/// Model for characters.
class TemTemApiCharacter {
  /// Character's name.
  final String name;

  /// Character's url on the wiki.
  final String wikiUrl;

  const TemTemApiCharacter({
    required this.name,
    required this.wikiUrl,
  });

  factory TemTemApiCharacter.fromJson(Map<String, dynamic> json) =>
      TemTemApiCharacter(name: json['name'], wikiUrl: json['wikiUrl']);
}
