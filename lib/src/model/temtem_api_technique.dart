class SynergyEffect {
  final String effect;
  final String type;
  final int damage;

  SynergyEffect(
      {required this.effect, required this.type, required this.damage});

  factory SynergyEffect.fromJson(Map<String, dynamic> json) => SynergyEffect(
        effect: json['effect'],
        type: json['type'],
        damage: json['damage'],
      );
}

class TemTemApiTechnique {
  final String name;
  final String wikiUrl;
  final String type;
  final String classTouch;
  final String classIcon;
  final int damage;
  final int staminaCost;
  final int hold;
  final String priority;
  final String priorityIcon;
  final String synergy;
  final List<SynergyEffect> synergyEffects;
  final String targets;
  final String description;

  TemTemApiTechnique({
    required this.name,
    required this.wikiUrl,
    required this.type,
    required this.classTouch,
    required this.classIcon,
    required this.damage,
    required this.staminaCost,
    required this.hold,
    required this.priority,
    required this.priorityIcon,
    required this.synergy,
    required this.synergyEffects,
    required this.targets,
    required this.description,
  });

  factory TemTemApiTechnique.fromJson(Map<String, dynamic> json) {
    return TemTemApiTechnique(
      name: json['name'],
      wikiUrl: json['wikiUrl'],
      type: json['type'],
      classTouch: json['class'],
      classIcon: json['classIcon'],
      damage: json['damage'],
      staminaCost: json['staminaCost'],
      hold: json['hold'],
      priority: json['priority'],
      priorityIcon: json['priorityIcon'],
      synergy: json['synergy'],
      synergyEffects: (json['synergyEffects'] as List)
          .map<SynergyEffect>((item) => SynergyEffect.fromJson(item))
          .toList(),
      targets: json['targets'].toString(),
      description: json['description'].toString().replaceAll('\n', ''),
    );
  }
}
