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
  String languages;
  int isFavorite;
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
    this.languages = '',
    this.rating = 0,
    this.isFavorite = 0, // 0: false, 1:true
  });
}
