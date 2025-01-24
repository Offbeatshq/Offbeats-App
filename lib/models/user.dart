class User {
  final String name;
  final String profilePicture;
  final List<String> skills;
  final List<String> interests;
  final List<String> roles;
  final List<String> badges;
  final List<String> achievements;

  User({
    required this.name,
    required this.profilePicture,
    required this.skills,
    required this.interests,
    required this.roles,
    required this.badges,
    required this.achievements,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      profilePicture: json['profilePicture'],
      skills: List<String>.from(json['skills']),
      interests: List<String>.from(json['interests']),
      roles: List<String>.from(json['roles']),
      badges: List<String>.from(json['badges']),
      achievements: List<String>.from(json['achievements']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'profilePicture': profilePicture,
      'skills': skills,
      'interests': interests,
      'roles': roles,
      'badges': badges,
      'achievements': achievements,
    };
  }
}
