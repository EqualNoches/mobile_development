part of 'explore_recipes.dart';

class Instruction {
  final String imageurl;
  final String description;
  final int durationInMinutes;

  Instruction({
    required this.imageurl,
    required this.description,
    required this.durationInMinutes,
  });

  factory Instruction.fromJson(Map<String, dynamic> json) =>
      Instruction(
        imageurl: json["imageurl"],
        description: json["description"],
        durationInMinutes: json["durationInMinutes"],
      );

  Map<String, dynamic> toJson() =>
      {
        "imageurl": imageurl,
        "description": description,
        "durationInMinutes": durationInMinutes,
      };
}