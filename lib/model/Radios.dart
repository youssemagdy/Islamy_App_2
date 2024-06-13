/// id : 1
/// name : "إذاعة إبراهيم الأخضر"
/// url : "https://backup.qurango.net/radio/ibrahim_alakdar"
/// recent_date : "2020-04-25 16:04:04"

class Radios {
  Radios({
      this.id, 
      this.name, 
      this.url, 
      this.recentDate,});

  Radios.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    url = json['url'];
    recentDate = json['recent_date'];
  }
  int? id;
  String? name;
  String? url;
  String? recentDate;
Radios copyWith({  int? id,
  String? name,
  String? url,
  String? recentDate,
}) => Radios(  id: id ?? this.id,
  name: name ?? this.name,
  url: url ?? this.url,
  recentDate: recentDate ?? this.recentDate,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['url'] = url;
    map['recent_date'] = recentDate;
    return map;
  }

}