class Vocabulary {
  late final String dutch;
  late final String english;
  late final String turkish;
  late final String example;

  Vocabulary(this.dutch, this.english, this.turkish, this.example);

  Vocabulary.fromJson(Map<String, dynamic> json) {
    dutch = json['dutch'];
    english = json['english'];
    turkish = json['turkish'];
    example = json['example'];
  }

  Map<String, dynamic> toJson() => {
        'dutch': dutch,
        'english': english,
        'turkish': turkish,
        'example': example,
      };
}
