class TemTemApiFreeTem {
  final String temtem;
  final int level;
  final int catchRate;
  final int reward;

  TemTemApiFreeTem({
    required this.temtem,
    required this.level,
    required this.catchRate,
    required this.reward,
  });

  factory TemTemApiFreeTem.fromJson(Map<String, dynamic> json) =>
      TemTemApiFreeTem(
        temtem: json['temtem'],
        level: json['level'],
        catchRate: json['catchRate'],
        reward: json['reward'],
      );
}
