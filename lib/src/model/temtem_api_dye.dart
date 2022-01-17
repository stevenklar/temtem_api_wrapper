class TemTemApiDye {
  final String wikiImageUrl;
  final String color;
  final String name;
  final String description;
  final List<String> bundles;

  TemTemApiDye({
    required this.wikiImageUrl,
    required this.color,
    required this.name,
    required this.description,
    required this.bundles,
  });

  factory TemTemApiDye.fromJson(Map<String, dynamic> json) => TemTemApiDye(
        wikiImageUrl: json['wikiImageUrl'],
        color: json['color'],
        name: json['name'],
        description: json['description'],
        bundles: List<String>.from(json['bundles']),
      );
}
