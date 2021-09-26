class BannerItem {
  int? id;
  String? image;
 // String? category;
 // String? product;

  BannerItem({
    this.id,
    this.image,
  //  this.category,
  //  this.product,
  });
  BannerItem.fromJson(Map<String, dynamic> json) {
    id = json["id"]?.toInt();
    image = json["image"]?.toString();
  //  category = json["category"]?.toString();
  //  product = json["product"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["image"] = image;
  //  data["category"] = category;
  //  data["product"] = product;
    return data;
  }
}
