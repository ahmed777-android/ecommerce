// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:ecommercev2/data/models/categories.dart';
import 'package:ecommercev2/data/models/home_response.dart';
import 'package:ecommercev2/data/models/padging.dart';
import 'package:ecommercev2/data/models/user.dart';

class ResponseData {
  bool? status;
  var message;
  User? data;

  ResponseData({this.status, this.message, this.data});

  ResponseData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = (json['data'] != null ? User.fromJson(json['data']) : null);
  }
  Map<String, dynamic> toJson() =>
      {'state': status, 'message': message, 'data': data!.toJson()};
}

//=======================================================
class SearchData {
  bool? status;
  var message;
  Data? data;

  SearchData({this.status, this.message, this.data});

  SearchData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = (json['data'] != null ? Data.fromJson(json['data']) : null);
  }
  Map<String, dynamic> toJson() =>
      {'state': status, 'message': message, 'data': data!.toJson()};
}

//=====================================================================
class ResponseHome {
  bool? status;
  var message;
  HomeData? data;

  ResponseHome({
    this.status,
    this.message,
    this.data,
  });
  ResponseHome.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"]?.toString();
    data = (json["data"] != null) ? HomeData.fromJson(json["data"]) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["status"] = status;
    data["message"] = message;
    data["data"] = this.data!.toJson();
    return data;
  }
}
//==========================================================

class CategoriesResponse {
  bool? status;
  var message;
  PadgingCategories? data;

  CategoriesResponse({
    this.status,
    this.message,
    this.data,
  });
  CategoriesResponse.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"]?.toString();
    data = (json["data"] != null)
        ? PadgingCategories.fromJson(json["data"])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data["status"] = status;
    data["message"] = message;
    data["data"] = this.data!.toJson();
    return data;
  }
}
