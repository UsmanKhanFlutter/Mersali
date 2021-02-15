class Countries {
  bool status;
  String message;
  List<Data> data;

  Countries({this.status, this.message, this.data});

  Countries.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int id;
  String country;
  String code;
  String cluster;

  Data({this.id, this.country, this.code, this.cluster});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    country = json['country'];
    code = json['code'];
    cluster = json['cluster'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['country'] = this.country;
    data['code'] = this.code;
    data['cluster'] = this.cluster;
    return data;
  }
}
