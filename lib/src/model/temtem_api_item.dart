class TemTemApiItem {
  final String wikiImageUrl;
  final String name;
  final String wikiUrl;
  final String description;
  final String effect;
  final String location;
  final int buyPrice;
  final int sellPrice;
  final String quest;
  final String category;

  TemTemApiItem({
    required this.wikiImageUrl,
    required this.name,
    required this.wikiUrl,
    required this.description,
    required this.effect,
    required this.location,
    required this.buyPrice,
    required this.sellPrice,
    required this.quest,
    required this.category,
  });

  factory TemTemApiItem.fromJson(Map<String, dynamic> json) => TemTemApiItem(
        wikiImageUrl: json['wikiImageUrl'],
        name: json['name'],
        wikiUrl: json['wikiUrl'],
        description: json['description'],
        effect: json['effect'],
        location: json['location'],
        buyPrice: json['buyPrice'],
        sellPrice: json['sellPrice'],
        quest: json['quest'],
        category: json['category'],
      );
}
