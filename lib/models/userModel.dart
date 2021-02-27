class UserModel {
  final String email;
  final int date;

  UserModel({this.email, this.date});

  factory UserModel.fromJson(Map<String, dynamic> json) => json == null ? null : UserModel(date: json['date'], email: json['email'] ?? '');

  Map<String, dynamic> toJson() => {"email": email, "date": date};

  static UserModel getUser(String email) => UserModel(email: email, date: DateTime.now().millisecondsSinceEpoch);
}
