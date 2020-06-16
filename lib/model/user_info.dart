class UserInformation {
  String username;
  int id;
  String avatarPic;
  String themeColor;

  UserInformation({
    this.avatarPic,
    this.id,
    this.themeColor,
    this.username,
  });

  factory UserInformation.fromJson(Map<String, dynamic> json) {
    print('fromJOSN $json   ${json['id'].runtimeType}');
    String name = json['name'] as String;
    int userId;
    if (json['name'] == null) {
      name = json['url_name'] as String;
    }
    if (json['id'].runtimeType == int) {
      userId = json['id'] as int;
    } else {
      userId = int.parse(json['id'] as String);
    }
    return UserInformation(
        avatarPic: json['avatar_pic'] as String,
        id: userId,
        username: name,
        themeColor: json['theme_color'] as String);
  }
}
