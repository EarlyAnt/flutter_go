import 'package:flutter_go/blocs/industry_bloc.dart';

import 'industry_main.dart';

///
/// Created with Android Studio.
/// User: 一晟
/// Date: 2019/4/28
/// Time: 3:19 PM
/// email: zhu.yan@alibaba-inc.com
///
class Suggestion {
  String query;
  List<Suggestions> suggestions;
  int code;

  Suggestion({this.query, this.suggestions, this.code});

  Suggestion.fromJson(Map<String, dynamic> json) {
    query = json['query'] as String;
    if (json['suggestions'] != null) {
      suggestions = List<Suggestions>();
      json['suggestions'].forEach((v) {
        Suggestions suggestion = Suggestions.fromJson(v as Map<String, dynamic>);
        suggestions.add(suggestion);
      });
    }
    code = json['code'] as int;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['query'] = this.query;
    if (this.suggestions != null) {
      data['suggestions'] = this.suggestions.map((v) => v.toJson()).toList();
    }
    data['code'] = this.code;
    return data;
  }
}

class Suggestions {
  Data data;
  String value;

  Suggestions({this.data, this.value});

  Suggestions.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data'] as Map<String, dynamic>) : null;
    value = json['value'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['value'] = this.value;
    return data;
  }
}

class Data {
  String category;

  Data({this.category});

  Data.fromJson(Map<String, dynamic> json) {
    category = json['category'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    return data;
  }
}
