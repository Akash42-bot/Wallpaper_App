class WallpaperClass{
  String imgurl;
  String name;
  String color;

  WallpaperClass({
    required this.name,
    required this.imgurl,
    required this.color
});

  factory WallpaperClass.fromMap(Map<String,dynamic>map){
    return WallpaperClass(
        name: map['photographer'],
        imgurl: map['src']['portrait'],
        color: map['avg_color']
    );
  }
}