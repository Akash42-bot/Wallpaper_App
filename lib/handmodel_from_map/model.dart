class UserModel{

  String first;
  String last;
  String title;
  String gender;
  String location;

  UserModel ({
   required this.location ,
     required this.title,
     required this.first,
     required this.gender,
     required this.last

});

  factory UserModel.fromMap(Map<String,dynamic>map){
    return UserModel(
        location: map['location'],
        title: map['name']['title'],
        first: map['name']['first'],
        gender: map['gander'],
        last: map['name']['last'],
    );
  }

}

