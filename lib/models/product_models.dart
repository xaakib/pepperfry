// To parse this JSON data, do
//
//     final productsModel = productsModelFromJson(jsonString);

import 'dart:convert';

List<ProductsModel> productsModelFromJson(String str) =>
    List<ProductsModel>.from(
        json.decode(str).map((x) => ProductsModel.fromJson(x)));

String productsModelToJson(List<ProductsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductsModel {
  ProductsModel({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.parent,
    this.count,
    this.image,
    this.reviewCount,
    this.permalink,
  });

  int id;
  String name;
  String slug;
  String description;
  int parent;
  int count;
  Image image;
  int reviewCount;
  String permalink;

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        description: json["description"],
        parent: json["parent"],
        count: json["count"],
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        reviewCount: json["review_count"],
        permalink: json["permalink"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "description": description,
        "parent": parent,
        "count": count,
        "image": image == null ? null : image.toJson(),
        "review_count": reviewCount,
        "permalink": permalink,
      };
}

class Image {
  Image({
    this.id,
    this.src,
    this.thumbnail,
    this.srcset,
    this.sizes,
    this.name,
    this.alt,
  });

  int id;
  String src;
  String thumbnail;
  String srcset;
  String sizes;
  String name;
  Alt alt;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        src: json["src"],
        thumbnail: json["thumbnail"],
        srcset: json["srcset"],
        sizes: json["sizes"],
        name: json["name"],
        alt: altValues.map[json["alt"]],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "src": src,
        "thumbnail": thumbnail,
        "srcset": srcset,
        "sizes": sizes,
        "name": name,
        "alt": altValues.reverse[alt],
      };
}

enum Alt {
  EMPTY,
  KITCHEN_FURNITURE_IDIYA,
  EXPANDABLE_CONTAINER_PORTABLE_HOUSE_WITH_2_BEDROOMS_1_BATHROOM
}

final altValues = EnumValues({
  "": Alt.EMPTY,
  "Expandable Container Portable House with 2 Bedrooms 1 Bathroom":
      Alt.EXPANDABLE_CONTAINER_PORTABLE_HOUSE_WITH_2_BEDROOMS_1_BATHROOM,
  "Kitchen Furniture | Idiya": Alt.KITCHEN_FURNITURE_IDIYA
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
