class TemTemApiRewards {
  final String name;
  final int quantity;
  final String wikiUrl;
  final String wikiImageUrl;
  final String effectDescription;
  final String requirement;
  final int freedTemtem;
  final String duration;
  final String startDate;
  final String endDate;

  TemTemApiRewards({
    required this.name,
    required this.quantity,
    required this.wikiUrl,
    required this.wikiImageUrl,
    required this.effectDescription,
    required this.requirement,
    required this.freedTemtem,
    required this.duration,
    required this.startDate,
    required this.endDate,
  });

  factory TemTemApiRewards.fromJson(Map<String, dynamic> json) =>
      TemTemApiRewards(
        name: json['name'],
        quantity: json['quantity'],
        wikiUrl: json['wikiUrl'],
        wikiImageUrl: json['wikiImageUrl'],
        effectDescription: json['effectDescription'],
        requirement: json['requirement'],
        freedTemtem: json['freedTemtem'],
        duration: json['duration'],
        startDate: json['startDate'],
        endDate: json['endDate'],
      );
}
