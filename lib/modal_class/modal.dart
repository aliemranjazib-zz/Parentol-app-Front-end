class User {
  int id;
  String name;
  String email;
  String password;
  String dob;
  int gender;

  User({
    this.id,
    this.name,
    this.email,
    this.password,
    this.dob,
    this.gender,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    dob = json['dob'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['dob'] = this.dob;
    data['gender'] = this.gender;
    return data;
  }

  static List<User> fromJsonList(jsonList) {
    return jsonList.map<User>((obj) => User.fromJson(obj)).toList();
  }
}

class Songs {
  int id;
  List<Singer> singer;
  String tsCreated;
  String tsUpdated;
  String name;
  String description;
  String image;
  String tag;
  double duration;
  String lyrics;
  int color;
  String file;
  List<int> category;

  Songs(
      {this.id,
      this.singer,
      this.tsCreated,
      this.tsUpdated,
      this.name,
      this.description,
      this.image,
      this.tag,
      this.duration,
      this.lyrics,
      this.color,
      this.file,
      this.category});

  Songs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['singer'] != null) {
      singer = new List<Singer>();
      json['singer'].forEach((v) {
       try{
         singer.add(new Singer.fromJson(v));
       }catch(s){

       }
      });
    }
    tsCreated = json['ts_created'];
    tsUpdated = json['ts_updated'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    tag = json['tag'];
    duration = json['duration'];
    lyrics = json['lyrics'];
    color = json['color'];
    file = json['file'];
    category = json['category'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.singer != null) {
      data['singer'] = this.singer.map((v) => v.toJson()).toList();
    }
    data['ts_created'] = this.tsCreated;
    data['ts_updated'] = this.tsUpdated;
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    data['tag'] = this.tag;
    data['duration'] = this.duration;
    data['lyrics'] = this.lyrics;
    data['color'] = this.color;
    data['file'] = this.file;
    data['category'] = this.category;
    return data;
  }

  static List<Songs> fromJsonList(jsonList) {
    return jsonList.map<Songs>((obj) => Songs.fromJson(obj)).toList();
  }
}

class Singer {
  int id;
  String tsCreated;
  String tsUpdated;
  String name;
  String description;
  int color;
  String image;
  String tag;

  Singer(
      {this.id,
      this.tsCreated,
      this.tsUpdated,
      this.name,
      this.description,
      this.color,
      this.image,
      this.tag});

  Singer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tsCreated = json['ts_created'];
    tsUpdated = json['ts_updated'];
    name = json['name'];
    description = json['description'];
    color = json['color'];
    image = json['image'];
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ts_created'] = this.tsCreated;
    data['ts_updated'] = this.tsUpdated;
    data['name'] = this.name;
    data['description'] = this.description;
    data['color'] = this.color;
    data['image'] = this.image;
    data['tag'] = this.tag;
    return data;
  }
}

class LatestAlbum {
  int id;
  List<Singer> singer;
  List<Songs> song;
  String tsCreated;
  String tsUpdated;
  String name;
  String description;
  int color;
  String image;
  String tag;

  LatestAlbum(
      {this.id,
      this.singer,
      this.song,
      this.tsCreated,
      this.tsUpdated,
      this.name,
      this.description,
      this.color,
      this.image,
      this.tag});

  LatestAlbum.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['singer'] != null) {
      singer = new List<Singer>();
      json['singer'].forEach((v) {
        singer.add(new Singer.fromJson(v));
      });
    }
    if (json['song'] != null) {
      song = new List<Songs>();
      json['song'].forEach((v) {
        song.add(new Songs.fromJson(v));
      });
    }
    tsCreated = json['ts_created'];
    tsUpdated = json['ts_updated'];
    name = json['name'];
    description = json['description'];
    color = json['color'];
    image = json['image'];
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.singer != null) {
      data['singer'] = this.singer.map((v) => v.toJson()).toList();
    }
    if (this.song != null) {
      data['song'] = this.song.map((v) => v.toJson()).toList();
    }
    data['ts_created'] = this.tsCreated;
    data['ts_updated'] = this.tsUpdated;
    data['name'] = this.name;
    data['description'] = this.description;
    data['color'] = this.color;
    data['image'] = this.image;
    data['tag'] = this.tag;
    return data;
  }

  static List<LatestAlbum> fromJsonList(jsonList) {
    return jsonList
        .map<LatestAlbum>((obj) => LatestAlbum.fromJson(obj))
        .toList();
  }
}
class Artist {
  int id;
  List<Songs> songs;
  String tsCreated;
  String tsUpdated;
  String name;
  String description;
  int color;
  String image;
  String tag;

  Artist(Artist artistList,
      {this.id,
        this.songs,
        this.tsCreated,
        this.tsUpdated,
        this.name,
        this.description,
        this.color,
        this.image,
        this.tag});

  Artist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['songs'] != null) {
      songs = new List<Songs>();
      json['songs'].forEach((v) {
        songs.add(new Songs.fromJson(v));
      });
    }
    tsCreated = json['ts_created'];
    tsUpdated = json['ts_updated'];
    name = json['name'];
    description = json['description'];
    color = json['color'];
    image = json['image'];
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.songs != null) {
      data['songs'] = this.songs.map((v) => v.toJson()).toList();
    }
    data['ts_created'] = this.tsCreated;
    data['ts_updated'] = this.tsUpdated;
    data['name'] = this.name;
    data['description'] = this.description;
    data['color'] = this.color;
    data['image'] = this.image;
    data['tag'] = this.tag;
    return data;
  }


  static List<Artist> fromJsonList(jsonList) {
    return jsonList
        .map<Artist>((obj) => Artist.fromJson(obj))
        .toList();
  }
}


class Categories {
  int id;
  List<Songs> songs;
  String tsCreated;
  String tsUpdated;
  String name;
  String description;
  int color;
  String image;
  String tag;

  Categories(
      {this.id,
        this.songs,
        this.tsCreated,
        this.tsUpdated,
        this.name,
        this.description,
        this.color,
        this.image,
        this.tag});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['songs'] != null) {
      songs = new List<Songs>();
      json['songs'].forEach((v) {
        songs.add(new Songs.fromJson(v));
      });
    }
    tsCreated = json['ts_created'];
    tsUpdated = json['ts_updated'];
    name = json['name'];
    description = json['description'];
    color = json['color'];
    image = json['image'];
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.songs != null) {
      data['songs'] = this.songs.map((v) => v.toJson()).toList();
    }
    data['ts_created'] = this.tsCreated;
    data['ts_updated'] = this.tsUpdated;
    data['name'] = this.name;
    data['description'] = this.description;
    data['color'] = this.color;
    data['image'] = this.image;
    data['tag'] = this.tag;
    return data;
  }



  static List<Categories> fromJsonList(jsonList) {
    return jsonList.map<Categories>((obj) => Categories.fromJson(obj)).toList();
  }

}

























class Subscribe {
  String name;
  String price;
  String status;
  String month;

  Subscribe(this.name, this.price,this.status,this.month);

  Map toJson() => {
    'name': name,
    'quantity': price,
    'status' : status,
    'month' : month,

  };
}
