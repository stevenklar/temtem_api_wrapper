class _Stats {
  final int hp;
  final int sta;
  final int spd;
  final int atk;
  final int def;
  final int spatk;
  final int spdef;
  final int? total;

  _Stats({
    required this.hp,
    required this.sta,
    required this.spd,
    required this.atk,
    required this.def,
    required this.spatk,
    required this.spdef,
    this.total,
  });

  factory _Stats.fromJson(Map<String, dynamic> json) => _Stats(
        hp: json['hp'],
        sta: json['sta'],
        spd: json['spd'],
        atk: json['atk'],
        def: json['def'],
        spatk: json['spatk'],
        spdef: json['spdef'],
        // total: json['total'],
      );

  factory _Stats.fromTvYieldsJson(Map<String, dynamic> json) => _Stats(
        hp: json['hp'],
        sta: json['sta'],
        spd: json['spd'],
        atk: json['atk'],
        def: json['def'],
        spatk: json['spatk'],
        spdef: json['spdef'],
        // total: json['total'],
      );
}

class _Details {
  final int heightCm;
  final int heightInches;
  final int weightKg;
  final int weightLbs;

  _Details(
      {required this.heightCm,
      required this.heightInches,
      required this.weightKg,
      required this.weightLbs});

  factory _Details.fromJson(Map<String, dynamic> json) {
    return _Details(
      heightCm: json['height']['cm'],
      heightInches: json['height']['inches'],
      weightKg: json['weight']['kg'],
      weightLbs: json['weight']['lbs'],
    );
  }
}

class Technique {
  final String name;
  final String source;
  final int? levels;

  Technique({required this.name, required this.source, this.levels});

  factory Technique.fromJson(Map<String, dynamic> json) => Technique(
      name: json['name'], source: json['source'], levels: json['levels']);
}

class EvolutionNode {
  final int number;
  final String name;
  final int stage;
  final dynamic levels;
  final bool trading;
  final Map<String, dynamic> traitMapping;

  EvolutionNode({
    required this.number,
    required this.name,
    required this.stage,
    required this.levels,
    required this.trading,
    required this.traitMapping,
  });

  factory EvolutionNode.fromJson(Map<String, dynamic> json) => EvolutionNode(
        number: json['number'],
        name: json['name'],
        stage: json['stage'],
        levels: json['level'],
        trading: json['trading'],
        traitMapping: json['traitMapping'],
      );
}

class _Evolution {
  final int? stage;
  final List<EvolutionNode>? evolutionTree;
  final bool evolves;
  final String? type;
  final String? description;

  _Evolution({
    this.stage,
    this.evolutionTree,
    required this.evolves,
    this.type,
    this.description,
  });

  factory _Evolution.fromJson(Map<String, dynamic> json) {
    if (json['evolves'] == false) {
      return _Evolution(evolves: false);
    }

    return _Evolution(
      stage: json['stage'],
      evolutionTree: List<EvolutionNode>.generate(
          json['evolutionTree'] == null ? 0 : json['evolutionTree'].length,
          (index) => EvolutionNode.fromJson(json['evolutionTree'][index])),
      evolves: json['evolves'],
      type: json['type'],
      description: json['description'],
    );
  }
}

class _FreeTem {
  final int minLevel;
  final int maxLevel;
  final int? minPansuns;
  final int? maxPansuns;

  _FreeTem(
      {required this.minLevel,
      required this.maxLevel,
      this.minPansuns,
      this.maxPansuns});

  factory _FreeTem.fromJson(Map<String, dynamic> json) {
    return _FreeTem(
      minLevel: json['minLevel'],
      maxLevel: json['maxLevel'],
      minPansuns: json['minPansuns'],
      maxPansuns: json['maxPansuns'],
    );
  }
}

class TemLocation {
  final String location;
  final String place;
  final String note;
  final String island;
  final String frequency;
  final String level;
  final _FreeTem freeTem;

  TemLocation({
    required this.location,
    required this.place,
    required this.note,
    required this.island,
    required this.frequency,
    required this.level,
    required this.freeTem,
  });

  factory TemLocation.fromJson(Map<String, dynamic> json) {
    return TemLocation(
      location: json['location'],
      place: json['place'],
      note: json['note'],
      island: json['island'],
      frequency: json['frequency'],
      level: json['level'],
      freeTem: _FreeTem.fromJson(json['freetem']),
    );
  }
}

class _GenderRatio {
  final double male;
  final double female;

  _GenderRatio({required this.male, required this.female});

  factory _GenderRatio.fromJson(Map<String, dynamic> json) => _GenderRatio(
        male: double.parse(json['male'].toString()),
        female: double.parse(json['female'].toString()),
      );
}

class TemTemApiTem {
  final int number;
  final String name;
  final List<String> types;
  final String portraitWikiUrl;
  final String wikiUrl;
  final _Stats stats;
  final String lumaPortraitWikiUrl;
  final List<String> traits;
  final _Details details;
  final List<Technique> techniques;
  final List<String> trivia;
  final _Evolution evolution;
  final String wikiPortraitUrlLarge;
  final String lumaWikiPortraitUrlLarge;
  final List<TemLocation> locations;
  final String icon;
  final String lumaIcon;
  final _GenderRatio genderRatio;
  final int catchRate;
  final _Stats tvYields;
  final String gameDescription;
  final String? wikiRenderStaticUrl;
  final String? wikiRenderAnimatedUrl;
  final String? wikiRenderStaticLumaUrl;
  final String? wikiRenderAnimatedLumaUrl;
  final String? renderStaticImage;
  final String? renderStaticLumaImage;
  final String? renderAnimatedImage;
  final String? renderAnimatedLumaImage;
  final Map<String, dynamic>? weaknesses;

  TemTemApiTem({
    required this.number,
    required this.name,
    required this.types,
    required this.portraitWikiUrl,
    required this.lumaPortraitWikiUrl,
    required this.wikiUrl,
    required this.stats,
    required this.traits,
    required this.details,
    required this.techniques,
    required this.trivia,
    required this.evolution,
    required this.wikiPortraitUrlLarge,
    required this.lumaWikiPortraitUrlLarge,
    required this.locations,
    required this.icon,
    required this.lumaIcon,
    required this.genderRatio,
    required this.catchRate,
    required this.tvYields,
    required this.gameDescription,
    this.wikiRenderStaticUrl,
    this.wikiRenderAnimatedUrl,
    this.wikiRenderStaticLumaUrl,
    this.wikiRenderAnimatedLumaUrl,
    this.renderStaticImage,
    this.renderStaticLumaImage,
    this.renderAnimatedImage,
    this.renderAnimatedLumaImage,
    this.weaknesses,
  });

  factory TemTemApiTem.fromJson(Map<String, dynamic> json) {
    return TemTemApiTem(
      number: json['number'],
      name: json['name'],
      types: List<String>.from(json['types']),
      portraitWikiUrl: json['portraitWikiUrl'],
      lumaPortraitWikiUrl: json['lumaPortraitWikiUrl'],
      wikiUrl: json['wikiUrl'],
      stats: _Stats.fromJson(json['stats']),
      traits: List<String>.from(json['traits']),
      details: _Details.fromJson(json['details']),
      techniques: Iterable<Technique>.generate(json['techniques'].length,
          (index) => Technique.fromJson(json['techniques'][index])).toList(),
      trivia: List<String>.from(json['trivia']),
      evolution: _Evolution.fromJson(json['evolution']),
      wikiPortraitUrlLarge: json['wikiPortraitUrlLarge'],
      lumaWikiPortraitUrlLarge: json['lumaWikiPortraitUrlLarge'],
      locations: Iterable<TemLocation>.generate(json['locations'].length,
          (index) => TemLocation.fromJson(json['locations'][index])).toList(),
      icon: json['icon'],
      lumaIcon: json['lumaIcon'],
      genderRatio: _GenderRatio.fromJson(json['genderRatio']),
      catchRate: json['catchRate'],
      tvYields: _Stats.fromTvYieldsJson(json['tvYields']),
      gameDescription: json['gameDescription'],
      weaknesses: json['weaknesses'],
    );
  }
}
