class ListOfDisciplines {
  String queryUrl;
  List<Doc> doc;

  ListOfDisciplines({this.queryUrl, this.doc});

  ListOfDisciplines.fromJson(Map<String, dynamic> json) {
    queryUrl = json['queryUrl'];
    if (json['doc'] != null) {
      doc = new List<Doc>();
      json['doc'].forEach((v) {
        doc.add(new Doc.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['queryUrl'] = this.queryUrl;
    if (this.doc != null) {
      data['doc'] = this.doc.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Doc {
  String event;
  int iDob;
  int iMaxage;
  String sConfigid;
  List<Data> data;

  Doc({this.event, this.iDob, this.iMaxage, this.sConfigid, this.data});

  Doc.fromJson(Map<String, dynamic> json) {
    event = json['event'];
    iDob = json['_dob'];
    iMaxage = json['_maxage'];
    sConfigid = json['_configid'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['event'] = this.event;
    data['_dob'] = this.iDob;
    data['_maxage'] = this.iMaxage;
    data['_configid'] = this.sConfigid;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String sDoc;
  int iId;
  int iSid;
  String name;
  List<Realcategories> realcategories;
  dynamic bSk;

  Data(
      {this.sDoc,
      this.iId,
      this.iSid,
      this.name,
      this.realcategories,
      this.bSk});

  Data.fromJson(Map<String, dynamic> json) {
    sDoc = json['_doc'];
    iId = json['_id'];
    iSid = json['_sid'];
    name = json['name'];
    if (json['realcategories'] != null) {
      realcategories = new List<Realcategories>();
      json['realcategories'].forEach((v) {
        realcategories.add(new Realcategories.fromJson(v));
      });
    }
    bSk = json['_sk'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_doc'] = this.sDoc;
    data['_id'] = this.iId;
    data['_sid'] = this.iSid;
    data['name'] = this.name;
    if (this.realcategories != null) {
      data['realcategories'] =
          this.realcategories.map((v) => v.toJson()).toList();
    }
    data['_sk'] = this.bSk;
    return data;
  }
}

class Realcategories {
  String sDoc;
  int iId;
  int iSid;
  int iRcid;
  String name;
  Cc cc;
  List<dynamic> tournaments;
  List<dynamic> uniquetournaments;
  bool bSk;

  Realcategories(
      {this.sDoc,
      this.iId,
      this.iSid,
      this.iRcid,
      this.name,
      this.cc,
      // this.tournaments,
      // this.uniquetournaments,
      this.bSk});

  Realcategories.fromJson(Map<String, dynamic> json) {
    sDoc = json['_doc'];
    iId = json['_id'];
    iSid = json['_sid'];
    iRcid = json['_rcid'];
    name = json['name'];
    cc = json['cc'] != null ? new Cc.fromJson(json['cc']) : null;
    // if (json['tournaments'] != null) {
    //   tournaments = new List<dynamic>();
    //   json['tournaments'].forEach((v) {
    //     tournaments.add(new List<dynamic>.fromJson(v));
    //   });
    // }
    // if (json['uniquetournaments'] != null) {
    //   uniquetournaments = new List<Null>();
    //   json['uniquetournaments'].forEach((v) {
    //     uniquetournaments.add(new Null.fromJson(v));
    //   });
    // }
    bSk = json['_sk'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_doc'] = this.sDoc;
    data['_id'] = this.iId;
    data['_sid'] = this.iSid;
    data['_rcid'] = this.iRcid;
    data['name'] = this.name;
    if (this.cc != null) {
      data['cc'] = this.cc.toJson();
    }
    if (this.tournaments != null) {
      data['tournaments'] = this.tournaments.map((v) => v.toJson()).toList();
    }
    if (this.uniquetournaments != null) {
      data['uniquetournaments'] =
          this.uniquetournaments.map((v) => v.toJson()).toList();
    }
    data['_sk'] = this.bSk;
    return data;
  }
}

class Cc {
  String sDoc;
  int iId;
  String a2;
  String name;
  String a3;
  String ioc;
  int continentid;
  String continent;
  int population;

  Cc(
      {this.sDoc,
      this.iId,
      this.a2,
      this.name,
      this.a3,
      this.ioc,
      this.continentid,
      this.continent,
      this.population});

  Cc.fromJson(Map<String, dynamic> json) {
    sDoc = json['_doc'];
    iId = json['_id'];
    a2 = json['a2'];
    name = json['name'];
    a3 = json['a3'];
    ioc = json['ioc'];
    continentid = json['continentid'];
    continent = json['continent'];
    population = json['population'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_doc'] = this.sDoc;
    data['_id'] = this.iId;
    data['a2'] = this.a2;
    data['name'] = this.name;
    data['a3'] = this.a3;
    data['ioc'] = this.ioc;
    data['continentid'] = this.continentid;
    data['continent'] = this.continent;
    data['population'] = this.population;
    return data;
  }
}
