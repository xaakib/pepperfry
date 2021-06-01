// To parse this JSON data, do
//
//     final productsModel = productsModelFromJson(jsonString);

import 'dart:convert';

List<ProductsModel> productsModelFromJson(String str) => List<ProductsModel>.from(json.decode(str).map((x) => ProductsModel.fromJson(x)));

String productsModelToJson(List<ProductsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductsModel {
    ProductsModel({
        this.id,
        this.name,
        this.slug,
        this.permalink,
        this.dateCreated,
        this.dateCreatedGmt,
        this.dateModified,
        this.dateModifiedGmt,
        this.type,
        this.status,
        this.featured,
        this.catalogVisibility,
        this.description,
        this.shortDescription,
        this.sku,
        this.price,
        this.regularPrice,
        this.salePrice,
        this.dateOnSaleFrom,
        this.dateOnSaleFromGmt,
        this.dateOnSaleTo,
        this.dateOnSaleToGmt,
        this.onSale,
        this.purchasable,
        this.totalSales,
        this.virtual,
        this.downloadable,
        this.downloads,
        this.downloadLimit,
        this.downloadExpiry,
        this.externalUrl,
        this.buttonText,
        this.taxStatus,
        this.taxClass,
        this.manageStock,
        this.stockQuantity,
        this.backorders,
        this.backordersAllowed,
        this.backordered,
        this.lowStockAmount,
        this.soldIndividually,
        this.weight,
        this.dimensions,
        this.shippingRequired,
        this.shippingTaxable,
        this.shippingClass,
        this.shippingClassId,
        this.reviewsAllowed,
        this.averageRating,
        this.ratingCount,
        this.upsellIds,
        this.crossSellIds,
        this.parentId,
        this.purchaseNote,
        this.categories,
        this.tags,
        this.images,
        this.attributes,
        this.defaultAttributes,
        this.variations,
        this.groupedProducts,
        this.menuOrder,
        this.priceHtml,
        this.relatedIds,
        this.metaData,
        this.stockStatus,
        this.yoastHead,
        this.links,
    });

    int id;
    String name;
    String slug;
    String permalink;
    DateTime dateCreated;
    DateTime dateCreatedGmt;
    DateTime dateModified;
    DateTime dateModifiedGmt;
    Type type;
    Status status;
    bool featured;
    CatalogVisibility catalogVisibility;
    String description;
    String shortDescription;
    String sku;
    String price;
    String regularPrice;
    String salePrice;
    dynamic dateOnSaleFrom;
    dynamic dateOnSaleFromGmt;
    dynamic dateOnSaleTo;
    dynamic dateOnSaleToGmt;
    bool onSale;
    bool purchasable;
    int totalSales;
    bool virtual;
    bool downloadable;
    List<dynamic> downloads;
    int downloadLimit;
    int downloadExpiry;
    String externalUrl;
    String buttonText;
    TaxStatus taxStatus;
    String taxClass;
    bool manageStock;
    int stockQuantity;
    Backorders backorders;
    bool backordersAllowed;
    bool backordered;
    int lowStockAmount;
    bool soldIndividually;
    String weight;
    Dimensions dimensions;
    bool shippingRequired;
    bool shippingTaxable;
    String shippingClass;
    int shippingClassId;
    bool reviewsAllowed;
    String averageRating;
    int ratingCount;
    List<dynamic> upsellIds;
    List<dynamic> crossSellIds;
    int parentId;
    String purchaseNote;
    List<Category> categories;
    List<Category> tags;
    List<Image> images;
    List<Attribute> attributes;
    List<dynamic> defaultAttributes;
    List<dynamic> variations;
    List<dynamic> groupedProducts;
    int menuOrder;
    String priceHtml;
    List<int> relatedIds;
    List<MetaDatum> metaData;
    StockStatus stockStatus;
    String yoastHead;
    Links links;

    factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        permalink: json["permalink"],
        dateCreated: DateTime.parse(json["date_created"]),
        dateCreatedGmt: DateTime.parse(json["date_created_gmt"]),
        dateModified: DateTime.parse(json["date_modified"]),
        dateModifiedGmt: DateTime.parse(json["date_modified_gmt"]),
        type: typeValues.map[json["type"]],
        status: statusValues.map[json["status"]],
        featured: json["featured"],
        catalogVisibility: catalogVisibilityValues.map[json["catalog_visibility"]],
        description: json["description"],
        shortDescription: json["short_description"],
        sku: json["sku"],
        price: json["price"],
        regularPrice: json["regular_price"],
        salePrice: json["sale_price"],
        dateOnSaleFrom: json["date_on_sale_from"],
        dateOnSaleFromGmt: json["date_on_sale_from_gmt"],
        dateOnSaleTo: json["date_on_sale_to"],
        dateOnSaleToGmt: json["date_on_sale_to_gmt"],
        onSale: json["on_sale"],
        purchasable: json["purchasable"],
        totalSales: json["total_sales"],
        virtual: json["virtual"],
        downloadable: json["downloadable"],
        downloads: List<dynamic>.from(json["downloads"].map((x) => x)),
        downloadLimit: json["download_limit"],
        downloadExpiry: json["download_expiry"],
        externalUrl: json["external_url"],
        buttonText: json["button_text"],
        taxStatus: taxStatusValues.map[json["tax_status"]],
        taxClass: json["tax_class"],
        manageStock: json["manage_stock"],
        stockQuantity: json["stock_quantity"],
        backorders: backordersValues.map[json["backorders"]],
        backordersAllowed: json["backorders_allowed"],
        backordered: json["backordered"],
        lowStockAmount: json["low_stock_amount"] == null ? null : json["low_stock_amount"],
        soldIndividually: json["sold_individually"],
        weight: json["weight"],
        dimensions: Dimensions.fromJson(json["dimensions"]),
        shippingRequired: json["shipping_required"],
        shippingTaxable: json["shipping_taxable"],
        shippingClass: json["shipping_class"],
        shippingClassId: json["shipping_class_id"],
        reviewsAllowed: json["reviews_allowed"],
        averageRating: json["average_rating"],
        ratingCount: json["rating_count"],
        upsellIds: List<dynamic>.from(json["upsell_ids"].map((x) => x)),
        crossSellIds: List<dynamic>.from(json["cross_sell_ids"].map((x) => x)),
        parentId: json["parent_id"],
        purchaseNote: json["purchase_note"],
        categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
        tags: List<Category>.from(json["tags"].map((x) => Category.fromJson(x))),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        attributes: List<Attribute>.from(json["attributes"].map((x) => Attribute.fromJson(x))),
        defaultAttributes: List<dynamic>.from(json["default_attributes"].map((x) => x)),
        variations: List<dynamic>.from(json["variations"].map((x) => x)),
        groupedProducts: List<dynamic>.from(json["grouped_products"].map((x) => x)),
        menuOrder: json["menu_order"],
        priceHtml: json["price_html"],
        relatedIds: List<int>.from(json["related_ids"].map((x) => x)),
        metaData: List<MetaDatum>.from(json["meta_data"].map((x) => MetaDatum.fromJson(x))),
        stockStatus: stockStatusValues.map[json["stock_status"]],
        yoastHead: json["yoast_head"],
        links: Links.fromJson(json["_links"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "permalink": permalink,
        "date_created": dateCreated.toIso8601String(),
        "date_created_gmt": dateCreatedGmt.toIso8601String(),
        "date_modified": dateModified.toIso8601String(),
        "date_modified_gmt": dateModifiedGmt.toIso8601String(),
        "type": typeValues.reverse[type],
        "status": statusValues.reverse[status],
        "featured": featured,
        "catalog_visibility": catalogVisibilityValues.reverse[catalogVisibility],
        "description": description,
        "short_description": shortDescription,
        "sku": sku,
        "price": price,
        "regular_price": regularPrice,
        "sale_price": salePrice,
        "date_on_sale_from": dateOnSaleFrom,
        "date_on_sale_from_gmt": dateOnSaleFromGmt,
        "date_on_sale_to": dateOnSaleTo,
        "date_on_sale_to_gmt": dateOnSaleToGmt,
        "on_sale": onSale,
        "purchasable": purchasable,
        "total_sales": totalSales,
        "virtual": virtual,
        "downloadable": downloadable,
        "downloads": List<dynamic>.from(downloads.map((x) => x)),
        "download_limit": downloadLimit,
        "download_expiry": downloadExpiry,
        "external_url": externalUrl,
        "button_text": buttonText,
        "tax_status": taxStatusValues.reverse[taxStatus],
        "tax_class": taxClass,
        "manage_stock": manageStock,
        "stock_quantity": stockQuantity,
        "backorders": backordersValues.reverse[backorders],
        "backorders_allowed": backordersAllowed,
        "backordered": backordered,
        "low_stock_amount": lowStockAmount == null ? null : lowStockAmount,
        "sold_individually": soldIndividually,
        "weight": weight,
        "dimensions": dimensions.toJson(),
        "shipping_required": shippingRequired,
        "shipping_taxable": shippingTaxable,
        "shipping_class": shippingClass,
        "shipping_class_id": shippingClassId,
        "reviews_allowed": reviewsAllowed,
        "average_rating": averageRating,
        "rating_count": ratingCount,
        "upsell_ids": List<dynamic>.from(upsellIds.map((x) => x)),
        "cross_sell_ids": List<dynamic>.from(crossSellIds.map((x) => x)),
        "parent_id": parentId,
        "purchase_note": purchaseNote,
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "attributes": List<dynamic>.from(attributes.map((x) => x.toJson())),
        "default_attributes": List<dynamic>.from(defaultAttributes.map((x) => x)),
        "variations": List<dynamic>.from(variations.map((x) => x)),
        "grouped_products": List<dynamic>.from(groupedProducts.map((x) => x)),
        "menu_order": menuOrder,
        "price_html": priceHtml,
        "related_ids": List<dynamic>.from(relatedIds.map((x) => x)),
        "meta_data": List<dynamic>.from(metaData.map((x) => x.toJson())),
        "stock_status": stockStatusValues.reverse[stockStatus],
        "yoast_head": yoastHead,
        "_links": links.toJson(),
    };
}

class Attribute {
    Attribute({
        this.id,
        this.name,
        this.position,
        this.visible,
        this.variation,
        this.options,
    });

    int id;
    String name;
    int position;
    bool visible;
    bool variation;
    List<String> options;

    factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
        id: json["id"],
        name: json["name"],
        position: json["position"],
        visible: json["visible"],
        variation: json["variation"],
        options: List<String>.from(json["options"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "position": position,
        "visible": visible,
        "variation": variation,
        "options": List<dynamic>.from(options.map((x) => x)),
    };
}

enum Backorders { NO, NOTIFY }

final backordersValues = EnumValues({
    "no": Backorders.NO,
    "notify": Backorders.NOTIFY
});

enum CatalogVisibility { VISIBLE }

final catalogVisibilityValues = EnumValues({
    "visible": CatalogVisibility.VISIBLE
});

class Category {
    Category({
        this.id,
        this.name,
        this.slug,
    });

    int id;
    String name;
    String slug;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
    };
}

class Dimensions {
    Dimensions({
        this.length,
        this.width,
        this.height,
    });

    String length;
    String width;
    String height;

    factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        length: json["length"],
        width: json["width"],
        height: json["height"],
    );

    Map<String, dynamic> toJson() => {
        "length": length,
        "width": width,
        "height": height,
    };
}

class Image {
    Image({
        this.id,
        this.dateCreated,
        this.dateCreatedGmt,
        this.dateModified,
        this.dateModifiedGmt,
        this.src,
        this.name,
        this.alt,
    });

    int id;
    DateTime dateCreated;
    DateTime dateCreatedGmt;
    DateTime dateModified;
    DateTime dateModifiedGmt;
    String src;
    String name;
    String alt;

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        dateCreated: DateTime.parse(json["date_created"]),
        dateCreatedGmt: DateTime.parse(json["date_created_gmt"]),
        dateModified: DateTime.parse(json["date_modified"]),
        dateModifiedGmt: DateTime.parse(json["date_modified_gmt"]),
        src: json["src"],
        name: json["name"],
        alt: json["alt"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "date_created": dateCreated.toIso8601String(),
        "date_created_gmt": dateCreatedGmt.toIso8601String(),
        "date_modified": dateModified.toIso8601String(),
        "date_modified_gmt": dateModifiedGmt.toIso8601String(),
        "src": src,
        "name": name,
        "alt": alt,
    };
}

class Links {
    Links({
        this.self,
        this.collection,
    });

    List<Collection> self;
    List<Collection> collection;

    factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: List<Collection>.from(json["self"].map((x) => Collection.fromJson(x))),
        collection: List<Collection>.from(json["collection"].map((x) => Collection.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "self": List<dynamic>.from(self.map((x) => x.toJson())),
        "collection": List<dynamic>.from(collection.map((x) => x.toJson())),
    };
}

class Collection {
    Collection({
        this.href,
    });

    String href;

    factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
    };
}

class MetaDatum {
    MetaDatum({
        this.id,
        this.key,
        this.value,
    });

    int id;
    String key;
    dynamic value;

    factory MetaDatum.fromJson(Map<String, dynamic> json) => MetaDatum(
        id: json["id"],
        key: json["key"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "key": key,
        "value": value,
    };
}

class ValueElement {
    ValueElement({
        this.title,
        this.linkTxt,
        this.desc,
    });

    String title;
    String linkTxt;
    String desc;

    factory ValueElement.fromJson(Map<String, dynamic> json) => ValueElement(
        title: json["title"],
        linkTxt: json["link_txt"],
        desc: json["desc"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "link_txt": linkTxt,
        "desc": desc,
    };
}

enum Status { PUBLISH }

final statusValues = EnumValues({
    "publish": Status.PUBLISH
});

enum StockStatus { INSTOCK }

final stockStatusValues = EnumValues({
    "instock": StockStatus.INSTOCK
});

enum TaxStatus { TAXABLE }

final taxStatusValues = EnumValues({
    "taxable": TaxStatus.TAXABLE
});

enum Type { SIMPLE }

final typeValues = EnumValues({
    "simple": Type.SIMPLE
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
