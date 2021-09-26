import 'package:ecommercev2/data/models/banner.dart';
import 'package:ecommercev2/data/models/item.dart';

class HomeData {

  List<BannerItem?>? banners;
  List<Item?>? products;
  String? ad;

  HomeData({
    this.banners,
    this.products,
    this.ad,
  });
  HomeData.fromJson(Map<String, dynamic> json) {
  if (json["banners"] != null) {
  final v = json["banners"];
  final arr0 = <BannerItem>[];
  v.forEach((v) {
  arr0.add(BannerItem.fromJson(v));
  });
    banners = arr0;
    }
  if (json["products"] != null) {
  final v = json["products"];
  final arr0 = <Item>[];
  v.forEach((v) {
  arr0.add(Item.fromJson(v));
  });
    products = arr0;
    }
    ad = json["ad"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (banners != null) {
      final v = banners;
      final arr0 = [];
  for (var v in v!) {
  arr0.add(v!.toJson());
  }
      data["banners"] = arr0;
    }
    if (products != null) {
      final v = products;
      final arr0 = [];
  for (var v in v!) {
  arr0.add(v!.toJson());
  }
      data["products"] = arr0;
    }
    data["ad"] = ad;
    return data;
  }
}


