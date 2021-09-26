
class Categories {
/*
{
  "id": 44,
  "name": "electrionic devices",
  "image": "https://student.valuxapps.com/storage/uploads/categories/16301438353uCFh.29118.jpg"
} 
*/

  int? id;
  String? name;
  String? image;

  Categories({
    this.id,
    this.name,
    this.image,
  });
  Categories.fromJson(Map<String, dynamic> json) {
    id = json["id"]?.toInt();
    name = json["name"]?.toString();
    image = json["image"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    data["image"] = image;
    return data;
  }
}

class PadgingCategories {
/*
{
  "current_page": 1,
  "data": [
    {
      "id": 44,
      "name": "electrionic devices",
      "image": "https://student.valuxapps.com/storage/uploads/categories/16301438353uCFh.29118.jpg"
    }
  ],
  "first_page_url": "https://student.valuxapps.com/api/categories?page=1",
  "from": 1,
  "last_page": 1,
  "last_page_url": "https://student.valuxapps.com/api/categories?page=1",
  "next_page_url": null,
  "path": "https://student.valuxapps.com/api/categories",
  "per_page": 35,
  "prev_page_url": null,
  "to": 5,
  "total": 5
} 
*/

  var currentPage;
  List<Categories?>? data;
  var firstPageUrl;
 var from;
var lastPage;
  var lastPageUrl;
  var nextPageUrl;
  var path;
 var perPage;
 var prevPageUrl;
var to;
  var total;

  PadgingCategories({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });
  PadgingCategories.fromJson(Map<String, dynamic> json) {
    currentPage = json["current_page"]?.toInt();
  if (json["data"] != null) {
  final v = json["data"];
  final arr0 = <Categories>[];
  v.forEach((v) {
  arr0.add(Categories.fromJson(v));
  });
    this.data = arr0;
    }
    firstPageUrl = json["first_page_url"]?.toString();
    from = json["from"]?.toInt();
    lastPage = json["last_page"]?.toInt();
    lastPageUrl = json["last_page_url"]?.toString();
    nextPageUrl = json["next_page_url"]?.toString();
    path = json["path"]?.toString();
    perPage = json["per_page"]?.toInt();
    prevPageUrl = json["prev_page_url"]?.toString();
    to = json["to"]?.toInt();
    total = json["total"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["current_page"] = currentPage;
    if (this.data != null) {
      final v = this.data;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v!.toJson());
  });
      data["data"] = arr0;
    }
    data["first_page_url"] = firstPageUrl;
    data["from"] = from;
    data["last_page"] = lastPage;
    data["last_page_url"] = lastPageUrl;
    data["next_page_url"] = nextPageUrl;
    data["path"] = path;
    data["per_page"] = perPage;
    data["prev_page_url"] = prevPageUrl;
    data["to"] = to;
    data["total"] = total;
    return data;
  }
}

/*
{
  "status": true,
  "message": null,
  "data": {
    "current_page": 1,
    "data": [
      {
        "id": 44,
        "name": "electrionic devices",
        "image": "https://student.valuxapps.com/storage/uploads/categories/16301438353uCFh.29118.jpg"
      }
    ],
    "first_page_url": "https://student.valuxapps.com/api/categories?page=1",
    "from": 1,
    "last_page": 1,
    "last_page_url": "https://student.valuxapps.com/api/categories?page=1",
    "next_page_url": null,
    "path": "https://student.valuxapps.com/api/categories",
    "per_page": 35,
    "prev_page_url": null,
    "to": 5,
    "total": 5
  }
} 
*/