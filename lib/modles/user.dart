class User {
  final String imagePath;
  final String userName;
  final String email;
  final String birthdate;
  final String phoneNumber;
  final String country;
  final String myLevel;
  final Object wantToLearn;

  const User({
    required this.imagePath,
    required this.userName,
    required this.email,
    required this.birthdate,
    required this.phoneNumber,
    required this.country,
    required this.myLevel,
    required this.wantToLearn,
  });
}
