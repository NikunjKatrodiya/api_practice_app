//https://tiendung01023.github.io/json_to_dart/


class CharacterModel {
  Info? info;
  List<Results>? results;

  CharacterModel({
    this.info,
    this.results,
  });

  CharacterModel.fromJson(Map<String, dynamic> json) {
    info = (json['info'] as Map<String, dynamic>?) != null ? Info.fromJson(json['info'] as Map<String, dynamic>) : null;
    results = (json['results'] as List?)?.map((dynamic e) => Results.fromJson(e as Map<String, dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['info'] = info?.toJson();
    json['results'] = results?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Info {
  int? count;
  int? pages;
  String? next;
  dynamic prev;

  Info({
    this.count,
    this.pages,
    this.next,
    this.prev,
  });

  Info.fromJson(Map<String, dynamic> json) {
    count = json['count'] as int?;
    pages = json['pages'] as int?;
    next = json['next'] as String?;
    prev = json['prev'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['count'] = count;
    json['pages'] = pages;
    json['next'] = next;
    json['prev'] = prev;
    return json;
  }
}

class Results {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  Origin? origin;
  Location? location;
  String? image;
  List<String>? episode;
  String? url;
  String? created;

  Results({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    name = json['name'] as String?;
    status = json['status'] as String?;
    species = json['species'] as String?;
    type = json['type'] as String?;
    gender = json['gender'] as String?;
    origin = (json['origin'] as Map<String, dynamic>?) != null ? Origin.fromJson(json['origin'] as Map<String, dynamic>) : null;
    location = (json['location'] as Map<String, dynamic>?) != null ? Location.fromJson(json['location'] as Map<String, dynamic>) : null;
    image = json['image'] as String?;
    episode = (json['episode'] as List?)?.map((dynamic e) => e as String).toList();
    url = json['url'] as String?;
    created = json['created'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    json['status'] = status;
    json['species'] = species;
    json['type'] = type;
    json['gender'] = gender;
    json['origin'] = origin?.toJson();
    json['location'] = location?.toJson();
    json['image'] = image;
    json['episode'] = episode;
    json['url'] = url;
    json['created'] = created;
    return json;
  }
}

class Origin {
  String? name;
  String? url;

  Origin({
    this.name,
    this.url,
  });

  Origin.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    url = json['url'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['url'] = url;
    return json;
  }
}

class Location {
  String? name;
  String? url;

  Location({
    this.name,
    this.url,
  });

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    url = json['url'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['url'] = url;
    return json;
  }
}
