import 'dart:convert';
import 'package:supermall/generated/json/base/json_field.dart';
import 'package:supermall/generated/json/product_info_entity.g.dart';

@JsonSerializable()
class ProductInfoEntity {

	late ProductInfoResult result;
  
  ProductInfoEntity();

  factory ProductInfoEntity.fromJson(Map<String, dynamic> json) => $ProductInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoEntityToJson(this);


}

@JsonSerializable()
class ProductInfoResult {

	late ProductInfoResultSkuInfo skuInfo;
	late ProductInfoResultItemInfo itemInfo;
	late ProductInfoResultTopBar topBar;
	late ProductInfoResultDetailInfo detailInfo;
	late List<String> columns;
	late ProductInfoResultPromotions promotions;
	late ProductInfoResultItemParams itemParams;
	late ProductInfoResultShopInfo shopInfo;
	late ProductInfoResultRate rate;
	late bool isLogin;
	late String esi;
  
  ProductInfoResult();

  factory ProductInfoResult.fromJson(Map<String, dynamic> json) => $ProductInfoResultFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultToJson(this);

}

@JsonSerializable()
class ProductInfoResultSkuInfo {

	late String title;
	late List<ProductInfoResultSkuInfoSkus> skus;
	late List<ProductInfoResultSkuInfoProps> props;
	late String styleKey;
	late String sizeKey;
	late String priceRange;
	late String defaultPrice;
	late bool isAbroad;
	late int totalStock;
  
  ProductInfoResultSkuInfo();

  factory ProductInfoResultSkuInfo.fromJson(Map<String, dynamic> json) => $ProductInfoResultSkuInfoFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultSkuInfoToJson(this);

}

@JsonSerializable()
class ProductInfoResultSkuInfoSkus {

	late String stockId;
	late String xdSkuId;
	late int price;
	late int nowprice;
	late String img;
	late String currency;
	late int stock;
	late String style;
	late String size;
	late int styleId;
	late int sizeId;
  
  ProductInfoResultSkuInfoSkus();

  factory ProductInfoResultSkuInfoSkus.fromJson(Map<String, dynamic> json) => $ProductInfoResultSkuInfoSkusFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultSkuInfoSkusToJson(this);

}

@JsonSerializable()
class ProductInfoResultSkuInfoProps {

	late String label;
	late List<ProductInfoResultSkuInfoPropsList> list;
	late bool isDefault;
  
  ProductInfoResultSkuInfoProps();

  factory ProductInfoResultSkuInfoProps.fromJson(Map<String, dynamic> json) => $ProductInfoResultSkuInfoPropsFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultSkuInfoPropsToJson(this);

}

@JsonSerializable()
class ProductInfoResultSkuInfoPropsList {

	late String type;
	late String name;
	late bool isDefault;
	late int styleId;
	late int index;
  
  ProductInfoResultSkuInfoPropsList();

  factory ProductInfoResultSkuInfoPropsList.fromJson(Map<String, dynamic> json) => $ProductInfoResultSkuInfoPropsListFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultSkuInfoPropsListToJson(this);

}

@JsonSerializable()
class ProductInfoResultItemInfo {

	late String desc;
	late String userId;
	late String shopId;
	late String title;
	late String discountDesc;
	late String discountBgColor;
	late String lowPrice;
	late String highPrice;
	late String lowNowPrice;
	late String highNowPrice;
	late String iid;
	late bool isSelf;
	late bool isFaved;
	late String imUrl;
	late int state;
	late List<String> topImages;
	late String oldPrice;
	late String price;
	late int saleType;
	late String tags;
	late bool inActivity;
	late bool redPacketsSwitch;
	late int cFav;
	late bool admin;
	late String cids;
	late int cartNum;
	late ProductInfoResultItemInfoExtra extra;
	late bool addCartTips;
	late bool isGrayUser;
	late bool isNewComer;
  
  ProductInfoResultItemInfo();

  factory ProductInfoResultItemInfo.fromJson(Map<String, dynamic> json) => $ProductInfoResultItemInfoFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultItemInfoToJson(this);

}

@JsonSerializable()
class ProductInfoResultItemInfoExtra {

	late int deliveryTime;
	late String sendAddress;
  
  ProductInfoResultItemInfoExtra();

  factory ProductInfoResultItemInfoExtra.fromJson(Map<String, dynamic> json) => $ProductInfoResultItemInfoExtraFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultItemInfoExtraToJson(this);

}

@JsonSerializable()
class ProductInfoResultTopBar {

	late String img;
	late String link;
  
  ProductInfoResultTopBar();

  factory ProductInfoResultTopBar.fromJson(Map<String, dynamic> json) => $ProductInfoResultTopBarFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultTopBarToJson(this);

}

@JsonSerializable()
class ProductInfoResultDetailInfo {

	late String desc;
	late List<ProductInfoResultDetailInfoDetailImage> detailImage;
  
  ProductInfoResultDetailInfo();

  factory ProductInfoResultDetailInfo.fromJson(Map<String, dynamic> json) => $ProductInfoResultDetailInfoFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultDetailInfoToJson(this);

}

@JsonSerializable()
class ProductInfoResultDetailInfoDetailImage {

	late String desc;
	late String key;
	late String anchor;
	late List<String> list;
  
  ProductInfoResultDetailInfoDetailImage();

  factory ProductInfoResultDetailInfoDetailImage.fromJson(Map<String, dynamic> json) => $ProductInfoResultDetailInfoDetailImageFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultDetailInfoDetailImageToJson(this);

}

@JsonSerializable()
class ProductInfoResultPromotions {

	late String link;
	late ProductInfoResultPromotionsAlertData alertData;
	late List<String> list;
  
  ProductInfoResultPromotions();

  factory ProductInfoResultPromotions.fromJson(Map<String, dynamic> json) => $ProductInfoResultPromotionsFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultPromotionsToJson(this);

}

@JsonSerializable()
class ProductInfoResultPromotionsAlertData {


  
  ProductInfoResultPromotionsAlertData();

  factory ProductInfoResultPromotionsAlertData.fromJson(Map<String, dynamic> json) => $ProductInfoResultPromotionsAlertDataFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultPromotionsAlertDataToJson(this);

}

@JsonSerializable()
class ProductInfoResultItemParams {

	late ProductInfoResultItemParamsInfo info;
	late ProductInfoResultItemParamsRule rule;
  
  ProductInfoResultItemParams();

  factory ProductInfoResultItemParams.fromJson(Map<String, dynamic> json) => $ProductInfoResultItemParamsFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultItemParamsToJson(this);

}

@JsonSerializable()
class ProductInfoResultItemParamsInfo {

	@JSONField(name: "set")
	late List<ProductInfoResultItemParamsInfoSet> xSet;
	late String key;
	late String anchor;
  
  ProductInfoResultItemParamsInfo();

  factory ProductInfoResultItemParamsInfo.fromJson(Map<String, dynamic> json) => $ProductInfoResultItemParamsInfoFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultItemParamsInfoToJson(this);

	@override
  String toString() {
    return 'ProductInfoResultItemParamsInfo{xSet: $xSet, key: $key, anchor: $anchor}';
  }
}

@JsonSerializable()
class ProductInfoResultItemParamsInfoSet {

	late String value;
	late String key;
  
  ProductInfoResultItemParamsInfoSet();

  factory ProductInfoResultItemParamsInfoSet.fromJson(Map<String, dynamic> json) => $ProductInfoResultItemParamsInfoSetFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultItemParamsInfoSetToJson(this);

	@override
  String toString() {
    return 'value: $value, key: $key';
  }
}

@JsonSerializable()
class ProductInfoResultItemParamsRule {

	late List<List> tables;
	late String key;
	late String anchor;
	late String disclaimer;
  
  ProductInfoResultItemParamsRule();

  factory ProductInfoResultItemParamsRule.fromJson(Map<String, dynamic> json) => $ProductInfoResultItemParamsRuleFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultItemParamsRuleToJson(this);

}

@JsonSerializable()
class ProductInfoResultShopInfo {

	late List<ProductInfoResultShopInfoScore> score;
	late List<ProductInfoResultShopInfoServices> services;
	late List<ProductInfoResultShopInfoCategories> categories;
	late int cFans;
	late int cSells;
	late String allGoodsUrl;
	late String shopUrl;
	late bool isMarked;
	late int cGoods;
	late String userId;
	late String shopLogo;
	late String name;
	late String shopId;
	late int type;
	late int level;
	late bool nonsupportReasonRefound;
  
  ProductInfoResultShopInfo();

  factory ProductInfoResultShopInfo.fromJson(Map<String, dynamic> json) => $ProductInfoResultShopInfoFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultShopInfoToJson(this);

}

@JsonSerializable()
class ProductInfoResultShopInfoScore {

	late String name;
	late double score;
	late bool isBetter;
  
  ProductInfoResultShopInfoScore();

  factory ProductInfoResultShopInfoScore.fromJson(Map<String, dynamic> json) => $ProductInfoResultShopInfoScoreFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultShopInfoScoreToJson(this);

}

@JsonSerializable()
class ProductInfoResultShopInfoServices {

	late String name;
	late String icon;
  
  ProductInfoResultShopInfoServices();

  factory ProductInfoResultShopInfoServices.fromJson(Map<String, dynamic> json) => $ProductInfoResultShopInfoServicesFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultShopInfoServicesToJson(this);

}

@JsonSerializable()
class ProductInfoResultShopInfoCategories {

	late String name;
	late String link;
  
  ProductInfoResultShopInfoCategories();

  factory ProductInfoResultShopInfoCategories.fromJson(Map<String, dynamic> json) => $ProductInfoResultShopInfoCategoriesFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultShopInfoCategoriesToJson(this);

}

@JsonSerializable()
class ProductInfoResultRate {

	late List<ProductInfoResultRateList> list;
	late int cRate;
  
  ProductInfoResultRate();

  factory ProductInfoResultRate.fromJson(Map<String, dynamic> json) => $ProductInfoResultRateFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultRateToJson(this);

}

@JsonSerializable()
class ProductInfoResultRateList {

	late ProductInfoResultRateListUser user;
	late String rateId;
	late String content;
	late int created;
	late int isAnonymous;
	late String style;
	late int isEmpty;
	late String level;
	late bool canExplain;
  
  ProductInfoResultRateList();

  factory ProductInfoResultRateList.fromJson(Map<String, dynamic> json) => $ProductInfoResultRateListFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultRateListToJson(this);

}

@JsonSerializable()
class ProductInfoResultRateListUser {

	late String uid;
	late String uname;
	late String avatar;
	late String profileUrl;
	late String tagIndex;
  
  ProductInfoResultRateListUser();

  factory ProductInfoResultRateListUser.fromJson(Map<String, dynamic> json) => $ProductInfoResultRateListUserFromJson(json);

  Map<String, dynamic> toJson() => $ProductInfoResultRateListUserToJson(this);

}