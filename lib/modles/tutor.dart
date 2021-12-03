class Tutor {
  String id;
  String userID;
  String name;
  String avatar;
  String video;
  String bio;
  String education;
  String experience;
  String profession;
  String interests;
  String specialties;
  bool isFavorite;
  double rating;

  Tutor({
    this.id = '',
    this.name = '',
    this.userID = '',
    this.avatar = '',
    this.video = '',
    this.bio = '',
    this.education = '',
    this.experience = '',
    this.profession = '',
    this.interests = '',
    this.specialties = '',
    this.rating = 0,
    this.isFavorite = false,
  });
}
