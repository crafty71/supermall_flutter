import 'package:supermall/generated/json/base/json_convert_content.dart';
import 'package:supermall/model/product_info_entity.dart';

ProductInfoEntity $ProductInfoEntityFromJson(Map<String, dynamic> json) {
	final ProductInfoEntity productInfoEntity = ProductInfoEntity();
	final ProductInfoResult? result = jsonConvert.convert<ProductInfoResult>(json['result']);
	if (result != null) {
		productInfoEntity.result = result;
	}
	return productInfoEntity;
}

Map<String, dynamic> $ProductInfoEntityToJson(ProductInfoEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['result'] = entity.result.toJson();
	return data;
}

ProductInfoResult $ProductInfoResultFromJson(Map<String, dynamic> json) {
	final ProductInfoResult productInfoResult = ProductInfoResult();
	final ProductInfoResultSkuInfo? skuInfo = jsonConvert.convert<ProductInfoResultSkuInfo>(json['skuInfo']);
	if (skuInfo != null) {
		productInfoResult.skuInfo = skuInfo;
	}
	final ProductInfoResultItemInfo? itemInfo = jsonConvert.convert<ProductInfoResultItemInfo>(json['itemInfo']);
	if (itemInfo != null) {
		productInfoResult.itemInfo = itemInfo;
	}
	final ProductInfoResultTopBar? topBar = jsonConvert.convert<ProductInfoResultTopBar>(json['topBar']);
	if (topBar != null) {
		productInfoResult.topBar = topBar;
	}
	final ProductInfoResultDetailInfo? detailInfo = jsonConvert.convert<ProductInfoResultDetailInfo>(json['detailInfo']);
	if (detailInfo != null) {
		productInfoResult.detailInfo = detailInfo;
	}
	final List<String>? columns = jsonConvert.convertListNotNull<String>(json['columns']);
	if (columns != null) {
		productInfoResult.columns = columns;
	}
	final ProductInfoResultPromotions? promotions = jsonConvert.convert<ProductInfoResultPromotions>(json['promotions']);
	if (promotions != null) {
		productInfoResult.promotions = promotions;
	}
	final ProductInfoResultItemParams? itemParams = jsonConvert.convert<ProductInfoResultItemParams>(json['itemParams']);
	if (itemParams != null) {
		productInfoResult.itemParams = itemParams;
	}
	final ProductInfoResultShopInfo? shopInfo = jsonConvert.convert<ProductInfoResultShopInfo>(json['shopInfo']);
	if (shopInfo != null) {
		productInfoResult.shopInfo = shopInfo;
	}
	final ProductInfoResultRate? rate = jsonConvert.convert<ProductInfoResultRate>(json['rate']);
	if (rate != null) {
		productInfoResult.rate = rate;
	}
	final bool? isLogin = jsonConvert.convert<bool>(json['isLogin']);
	if (isLogin != null) {
		productInfoResult.isLogin = isLogin;
	}
	final String? esi = jsonConvert.convert<String>(json['esi']);
	if (esi != null) {
		productInfoResult.esi = esi;
	}
	return productInfoResult;
}

Map<String, dynamic> $ProductInfoResultToJson(ProductInfoResult entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['skuInfo'] = entity.skuInfo.toJson();
	data['itemInfo'] = entity.itemInfo.toJson();
	data['topBar'] = entity.topBar.toJson();
	data['detailInfo'] = entity.detailInfo.toJson();
	data['columns'] =  entity.columns;
	data['promotions'] = entity.promotions.toJson();
	data['itemParams'] = entity.itemParams.toJson();
	data['shopInfo'] = entity.shopInfo.toJson();
	data['rate'] = entity.rate.toJson();
	data['isLogin'] = entity.isLogin;
	data['esi'] = entity.esi;
	return data;
}

ProductInfoResultSkuInfo $ProductInfoResultSkuInfoFromJson(Map<String, dynamic> json) {
	final ProductInfoResultSkuInfo productInfoResultSkuInfo = ProductInfoResultSkuInfo();
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		productInfoResultSkuInfo.title = title;
	}
	final List<ProductInfoResultSkuInfoSkus>? skus = jsonConvert.convertListNotNull<ProductInfoResultSkuInfoSkus>(json['skus']);
	if (skus != null) {
		productInfoResultSkuInfo.skus = skus;
	}
	final List<ProductInfoResultSkuInfoProps>? props = jsonConvert.convertListNotNull<ProductInfoResultSkuInfoProps>(json['props']);
	if (props != null) {
		productInfoResultSkuInfo.props = props;
	}
	final String? styleKey = jsonConvert.convert<String>(json['styleKey']);
	if (styleKey != null) {
		productInfoResultSkuInfo.styleKey = styleKey;
	}
	final String? sizeKey = jsonConvert.convert<String>(json['sizeKey']);
	if (sizeKey != null) {
		productInfoResultSkuInfo.sizeKey = sizeKey;
	}
	final String? priceRange = jsonConvert.convert<String>(json['priceRange']);
	if (priceRange != null) {
		productInfoResultSkuInfo.priceRange = priceRange;
	}
	final String? defaultPrice = jsonConvert.convert<String>(json['defaultPrice']);
	if (defaultPrice != null) {
		productInfoResultSkuInfo.defaultPrice = defaultPrice;
	}
	final bool? isAbroad = jsonConvert.convert<bool>(json['isAbroad']);
	if (isAbroad != null) {
		productInfoResultSkuInfo.isAbroad = isAbroad;
	}
	final int? totalStock = jsonConvert.convert<int>(json['totalStock']);
	if (totalStock != null) {
		productInfoResultSkuInfo.totalStock = totalStock;
	}
	return productInfoResultSkuInfo;
}

Map<String, dynamic> $ProductInfoResultSkuInfoToJson(ProductInfoResultSkuInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['title'] = entity.title;
	data['skus'] =  entity.skus.map((v) => v.toJson()).toList();
	data['props'] =  entity.props.map((v) => v.toJson()).toList();
	data['styleKey'] = entity.styleKey;
	data['sizeKey'] = entity.sizeKey;
	data['priceRange'] = entity.priceRange;
	data['defaultPrice'] = entity.defaultPrice;
	data['isAbroad'] = entity.isAbroad;
	data['totalStock'] = entity.totalStock;
	return data;
}

ProductInfoResultSkuInfoSkus $ProductInfoResultSkuInfoSkusFromJson(Map<String, dynamic> json) {
	final ProductInfoResultSkuInfoSkus productInfoResultSkuInfoSkus = ProductInfoResultSkuInfoSkus();
	final String? stockId = jsonConvert.convert<String>(json['stockId']);
	if (stockId != null) {
		productInfoResultSkuInfoSkus.stockId = stockId;
	}
	final String? xdSkuId = jsonConvert.convert<String>(json['xdSkuId']);
	if (xdSkuId != null) {
		productInfoResultSkuInfoSkus.xdSkuId = xdSkuId;
	}
	final int? price = jsonConvert.convert<int>(json['price']);
	if (price != null) {
		productInfoResultSkuInfoSkus.price = price;
	}
	final int? nowprice = jsonConvert.convert<int>(json['nowprice']);
	if (nowprice != null) {
		productInfoResultSkuInfoSkus.nowprice = nowprice;
	}
	final String? img = jsonConvert.convert<String>(json['img']);
	if (img != null) {
		productInfoResultSkuInfoSkus.img = img;
	}
	final String? currency = jsonConvert.convert<String>(json['currency']);
	if (currency != null) {
		productInfoResultSkuInfoSkus.currency = currency;
	}
	final int? stock = jsonConvert.convert<int>(json['stock']);
	if (stock != null) {
		productInfoResultSkuInfoSkus.stock = stock;
	}
	final String? style = jsonConvert.convert<String>(json['style']);
	if (style != null) {
		productInfoResultSkuInfoSkus.style = style;
	}
	final String? size = jsonConvert.convert<String>(json['size']);
	if (size != null) {
		productInfoResultSkuInfoSkus.size = size;
	}
	final int? styleId = jsonConvert.convert<int>(json['styleId']);
	if (styleId != null) {
		productInfoResultSkuInfoSkus.styleId = styleId;
	}
	final int? sizeId = jsonConvert.convert<int>(json['sizeId']);
	if (sizeId != null) {
		productInfoResultSkuInfoSkus.sizeId = sizeId;
	}
	return productInfoResultSkuInfoSkus;
}

Map<String, dynamic> $ProductInfoResultSkuInfoSkusToJson(ProductInfoResultSkuInfoSkus entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['stockId'] = entity.stockId;
	data['xdSkuId'] = entity.xdSkuId;
	data['price'] = entity.price;
	data['nowprice'] = entity.nowprice;
	data['img'] = entity.img;
	data['currency'] = entity.currency;
	data['stock'] = entity.stock;
	data['style'] = entity.style;
	data['size'] = entity.size;
	data['styleId'] = entity.styleId;
	data['sizeId'] = entity.sizeId;
	return data;
}

ProductInfoResultSkuInfoProps $ProductInfoResultSkuInfoPropsFromJson(Map<String, dynamic> json) {
	final ProductInfoResultSkuInfoProps productInfoResultSkuInfoProps = ProductInfoResultSkuInfoProps();
	final String? label = jsonConvert.convert<String>(json['label']);
	if (label != null) {
		productInfoResultSkuInfoProps.label = label;
	}
	final List<ProductInfoResultSkuInfoPropsList>? list = jsonConvert.convertListNotNull<ProductInfoResultSkuInfoPropsList>(json['list']);
	if (list != null) {
		productInfoResultSkuInfoProps.list = list;
	}
	final bool? isDefault = jsonConvert.convert<bool>(json['isDefault']);
	if (isDefault != null) {
		productInfoResultSkuInfoProps.isDefault = isDefault;
	}
	return productInfoResultSkuInfoProps;
}

Map<String, dynamic> $ProductInfoResultSkuInfoPropsToJson(ProductInfoResultSkuInfoProps entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['label'] = entity.label;
	data['list'] =  entity.list.map((v) => v.toJson()).toList();
	data['isDefault'] = entity.isDefault;
	return data;
}

ProductInfoResultSkuInfoPropsList $ProductInfoResultSkuInfoPropsListFromJson(Map<String, dynamic> json) {
	final ProductInfoResultSkuInfoPropsList productInfoResultSkuInfoPropsList = ProductInfoResultSkuInfoPropsList();
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		productInfoResultSkuInfoPropsList.type = type;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		productInfoResultSkuInfoPropsList.name = name;
	}
	final bool? isDefault = jsonConvert.convert<bool>(json['isDefault']);
	if (isDefault != null) {
		productInfoResultSkuInfoPropsList.isDefault = isDefault;
	}
	final int? styleId = jsonConvert.convert<int>(json['styleId']);
	if (styleId != null) {
		productInfoResultSkuInfoPropsList.styleId = styleId;
	}
	final int? index = jsonConvert.convert<int>(json['index']);
	if (index != null) {
		productInfoResultSkuInfoPropsList.index = index;
	}
	return productInfoResultSkuInfoPropsList;
}

Map<String, dynamic> $ProductInfoResultSkuInfoPropsListToJson(ProductInfoResultSkuInfoPropsList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['type'] = entity.type;
	data['name'] = entity.name;
	data['isDefault'] = entity.isDefault;
	data['styleId'] = entity.styleId;
	data['index'] = entity.index;
	return data;
}

ProductInfoResultItemInfo $ProductInfoResultItemInfoFromJson(Map<String, dynamic> json) {
	final ProductInfoResultItemInfo productInfoResultItemInfo = ProductInfoResultItemInfo();
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		productInfoResultItemInfo.desc = desc;
	}
	final String? userId = jsonConvert.convert<String>(json['userId']);
	if (userId != null) {
		productInfoResultItemInfo.userId = userId;
	}
	final String? shopId = jsonConvert.convert<String>(json['shopId']);
	if (shopId != null) {
		productInfoResultItemInfo.shopId = shopId;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		productInfoResultItemInfo.title = title;
	}
	final String? discountDesc = jsonConvert.convert<String>(json['discountDesc']);
	if (discountDesc != null) {
		productInfoResultItemInfo.discountDesc = discountDesc;
	}
	final String? discountBgColor = jsonConvert.convert<String>(json['discountBgColor']);
	if (discountBgColor != null) {
		productInfoResultItemInfo.discountBgColor = discountBgColor;
	}
	final String? lowPrice = jsonConvert.convert<String>(json['lowPrice']);
	if (lowPrice != null) {
		productInfoResultItemInfo.lowPrice = lowPrice;
	}
	final String? highPrice = jsonConvert.convert<String>(json['highPrice']);
	if (highPrice != null) {
		productInfoResultItemInfo.highPrice = highPrice;
	}
	final String? lowNowPrice = jsonConvert.convert<String>(json['lowNowPrice']);
	if (lowNowPrice != null) {
		productInfoResultItemInfo.lowNowPrice = lowNowPrice;
	}
	final String? highNowPrice = jsonConvert.convert<String>(json['highNowPrice']);
	if (highNowPrice != null) {
		productInfoResultItemInfo.highNowPrice = highNowPrice;
	}
	final String? iid = jsonConvert.convert<String>(json['iid']);
	if (iid != null) {
		productInfoResultItemInfo.iid = iid;
	}
	final bool? isSelf = jsonConvert.convert<bool>(json['isSelf']);
	if (isSelf != null) {
		productInfoResultItemInfo.isSelf = isSelf;
	}
	final bool? isFaved = jsonConvert.convert<bool>(json['isFaved']);
	if (isFaved != null) {
		productInfoResultItemInfo.isFaved = isFaved;
	}
	final String? imUrl = jsonConvert.convert<String>(json['imUrl']);
	if (imUrl != null) {
		productInfoResultItemInfo.imUrl = imUrl;
	}
	final int? state = jsonConvert.convert<int>(json['state']);
	if (state != null) {
		productInfoResultItemInfo.state = state;
	}
	final List<String>? topImages = jsonConvert.convertListNotNull<String>(json['topImages']);
	if (topImages != null) {
		productInfoResultItemInfo.topImages = topImages;
	}
	final String? oldPrice = jsonConvert.convert<String>(json['oldPrice']);
	if (oldPrice != null) {
		productInfoResultItemInfo.oldPrice = oldPrice;
	}
	final String? price = jsonConvert.convert<String>(json['price']);
	if (price != null) {
		productInfoResultItemInfo.price = price;
	}
	final int? saleType = jsonConvert.convert<int>(json['saleType']);
	if (saleType != null) {
		productInfoResultItemInfo.saleType = saleType;
	}
	final String? tags = jsonConvert.convert<String>(json['tags']);
	if (tags != null) {
		productInfoResultItemInfo.tags = tags;
	}
	final bool? inActivity = jsonConvert.convert<bool>(json['inActivity']);
	if (inActivity != null) {
		productInfoResultItemInfo.inActivity = inActivity;
	}
	final bool? redPacketsSwitch = jsonConvert.convert<bool>(json['redPacketsSwitch']);
	if (redPacketsSwitch != null) {
		productInfoResultItemInfo.redPacketsSwitch = redPacketsSwitch;
	}
	final int? cFav = jsonConvert.convert<int>(json['cFav']);
	if (cFav != null) {
		productInfoResultItemInfo.cFav = cFav;
	}
	final bool? admin = jsonConvert.convert<bool>(json['admin']);
	if (admin != null) {
		productInfoResultItemInfo.admin = admin;
	}
	final String? cids = jsonConvert.convert<String>(json['cids']);
	if (cids != null) {
		productInfoResultItemInfo.cids = cids;
	}
	final int? cartNum = jsonConvert.convert<int>(json['cartNum']);
	if (cartNum != null) {
		productInfoResultItemInfo.cartNum = cartNum;
	}
	final ProductInfoResultItemInfoExtra? extra = jsonConvert.convert<ProductInfoResultItemInfoExtra>(json['extra']);
	if (extra != null) {
		productInfoResultItemInfo.extra = extra;
	}
	final bool? addCartTips = jsonConvert.convert<bool>(json['addCartTips']);
	if (addCartTips != null) {
		productInfoResultItemInfo.addCartTips = addCartTips;
	}
	final bool? isGrayUser = jsonConvert.convert<bool>(json['isGrayUser']);
	if (isGrayUser != null) {
		productInfoResultItemInfo.isGrayUser = isGrayUser;
	}
	final bool? isNewComer = jsonConvert.convert<bool>(json['isNewComer']);
	if (isNewComer != null) {
		productInfoResultItemInfo.isNewComer = isNewComer;
	}
	return productInfoResultItemInfo;
}

Map<String, dynamic> $ProductInfoResultItemInfoToJson(ProductInfoResultItemInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['desc'] = entity.desc;
	data['userId'] = entity.userId;
	data['shopId'] = entity.shopId;
	data['title'] = entity.title;
	data['discountDesc'] = entity.discountDesc;
	data['discountBgColor'] = entity.discountBgColor;
	data['lowPrice'] = entity.lowPrice;
	data['highPrice'] = entity.highPrice;
	data['lowNowPrice'] = entity.lowNowPrice;
	data['highNowPrice'] = entity.highNowPrice;
	data['iid'] = entity.iid;
	data['isSelf'] = entity.isSelf;
	data['isFaved'] = entity.isFaved;
	data['imUrl'] = entity.imUrl;
	data['state'] = entity.state;
	data['topImages'] =  entity.topImages;
	data['oldPrice'] = entity.oldPrice;
	data['price'] = entity.price;
	data['saleType'] = entity.saleType;
	data['tags'] = entity.tags;
	data['inActivity'] = entity.inActivity;
	data['redPacketsSwitch'] = entity.redPacketsSwitch;
	data['cFav'] = entity.cFav;
	data['admin'] = entity.admin;
	data['cids'] = entity.cids;
	data['cartNum'] = entity.cartNum;
	data['extra'] = entity.extra.toJson();
	data['addCartTips'] = entity.addCartTips;
	data['isGrayUser'] = entity.isGrayUser;
	data['isNewComer'] = entity.isNewComer;
	return data;
}

ProductInfoResultItemInfoExtra $ProductInfoResultItemInfoExtraFromJson(Map<String, dynamic> json) {
	final ProductInfoResultItemInfoExtra productInfoResultItemInfoExtra = ProductInfoResultItemInfoExtra();
	final int? deliveryTime = jsonConvert.convert<int>(json['deliveryTime']);
	if (deliveryTime != null) {
		productInfoResultItemInfoExtra.deliveryTime = deliveryTime;
	}
	final String? sendAddress = jsonConvert.convert<String>(json['sendAddress']);
	if (sendAddress != null) {
		productInfoResultItemInfoExtra.sendAddress = sendAddress;
	}
	return productInfoResultItemInfoExtra;
}

Map<String, dynamic> $ProductInfoResultItemInfoExtraToJson(ProductInfoResultItemInfoExtra entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['deliveryTime'] = entity.deliveryTime;
	data['sendAddress'] = entity.sendAddress;
	return data;
}

ProductInfoResultTopBar $ProductInfoResultTopBarFromJson(Map<String, dynamic> json) {
	final ProductInfoResultTopBar productInfoResultTopBar = ProductInfoResultTopBar();
	final String? img = jsonConvert.convert<String>(json['img']);
	if (img != null) {
		productInfoResultTopBar.img = img;
	}
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		productInfoResultTopBar.link = link;
	}
	return productInfoResultTopBar;
}

Map<String, dynamic> $ProductInfoResultTopBarToJson(ProductInfoResultTopBar entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['img'] = entity.img;
	data['link'] = entity.link;
	return data;
}

ProductInfoResultDetailInfo $ProductInfoResultDetailInfoFromJson(Map<String, dynamic> json) {
	final ProductInfoResultDetailInfo productInfoResultDetailInfo = ProductInfoResultDetailInfo();
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		productInfoResultDetailInfo.desc = desc;
	}
	final List<ProductInfoResultDetailInfoDetailImage>? detailImage = jsonConvert.convertListNotNull<ProductInfoResultDetailInfoDetailImage>(json['detailImage']);
	if (detailImage != null) {
		productInfoResultDetailInfo.detailImage = detailImage;
	}
	return productInfoResultDetailInfo;
}

Map<String, dynamic> $ProductInfoResultDetailInfoToJson(ProductInfoResultDetailInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['desc'] = entity.desc;
	data['detailImage'] =  entity.detailImage.map((v) => v.toJson()).toList();
	return data;
}

ProductInfoResultDetailInfoDetailImage $ProductInfoResultDetailInfoDetailImageFromJson(Map<String, dynamic> json) {
	final ProductInfoResultDetailInfoDetailImage productInfoResultDetailInfoDetailImage = ProductInfoResultDetailInfoDetailImage();
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		productInfoResultDetailInfoDetailImage.desc = desc;
	}
	final String? key = jsonConvert.convert<String>(json['key']);
	if (key != null) {
		productInfoResultDetailInfoDetailImage.key = key;
	}
	final String? anchor = jsonConvert.convert<String>(json['anchor']);
	if (anchor != null) {
		productInfoResultDetailInfoDetailImage.anchor = anchor;
	}
	final List<String>? list = jsonConvert.convertListNotNull<String>(json['list']);
	if (list != null) {
		productInfoResultDetailInfoDetailImage.list = list;
	}
	return productInfoResultDetailInfoDetailImage;
}

Map<String, dynamic> $ProductInfoResultDetailInfoDetailImageToJson(ProductInfoResultDetailInfoDetailImage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['desc'] = entity.desc;
	data['key'] = entity.key;
	data['anchor'] = entity.anchor;
	data['list'] =  entity.list;
	return data;
}

ProductInfoResultPromotions $ProductInfoResultPromotionsFromJson(Map<String, dynamic> json) {
	final ProductInfoResultPromotions productInfoResultPromotions = ProductInfoResultPromotions();
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		productInfoResultPromotions.link = link;
	}
	final ProductInfoResultPromotionsAlertData? alertData = jsonConvert.convert<ProductInfoResultPromotionsAlertData>(json['alertData']);
	if (alertData != null) {
		productInfoResultPromotions.alertData = alertData;
	}
	final List<String>? list = jsonConvert.convertListNotNull<String>(json['list']);
	if (list != null) {
		productInfoResultPromotions.list = list;
	}
	return productInfoResultPromotions;
}

Map<String, dynamic> $ProductInfoResultPromotionsToJson(ProductInfoResultPromotions entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['link'] = entity.link;
	data['alertData'] = entity.alertData.toJson();
	data['list'] =  entity.list;
	return data;
}

ProductInfoResultPromotionsAlertData $ProductInfoResultPromotionsAlertDataFromJson(Map<String, dynamic> json) {
	final ProductInfoResultPromotionsAlertData productInfoResultPromotionsAlertData = ProductInfoResultPromotionsAlertData();
	return productInfoResultPromotionsAlertData;
}

Map<String, dynamic> $ProductInfoResultPromotionsAlertDataToJson(ProductInfoResultPromotionsAlertData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	return data;
}

ProductInfoResultItemParams $ProductInfoResultItemParamsFromJson(Map<String, dynamic> json) {
	final ProductInfoResultItemParams productInfoResultItemParams = ProductInfoResultItemParams();
	final ProductInfoResultItemParamsInfo? info = jsonConvert.convert<ProductInfoResultItemParamsInfo>(json['info']);
	if (info != null) {
		productInfoResultItemParams.info = info;
	}
	final ProductInfoResultItemParamsRule? rule = jsonConvert.convert<ProductInfoResultItemParamsRule>(json['rule']);
	if (rule != null) {
		productInfoResultItemParams.rule = rule;
	}
	return productInfoResultItemParams;
}

Map<String, dynamic> $ProductInfoResultItemParamsToJson(ProductInfoResultItemParams entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['info'] = entity.info.toJson();
	data['rule'] = entity.rule.toJson();
	return data;
}

ProductInfoResultItemParamsInfo $ProductInfoResultItemParamsInfoFromJson(Map<String, dynamic> json) {
	final ProductInfoResultItemParamsInfo productInfoResultItemParamsInfo = ProductInfoResultItemParamsInfo();
	final List<ProductInfoResultItemParamsInfoSet>? xSet = jsonConvert.convertListNotNull<ProductInfoResultItemParamsInfoSet>(json['set']);
	if (xSet != null) {
		productInfoResultItemParamsInfo.xSet = xSet;
	}
	final String? key = jsonConvert.convert<String>(json['key']);
	if (key != null) {
		productInfoResultItemParamsInfo.key = key;
	}
	final String? anchor = jsonConvert.convert<String>(json['anchor']);
	if (anchor != null) {
		productInfoResultItemParamsInfo.anchor = anchor;
	}
	return productInfoResultItemParamsInfo;
}

Map<String, dynamic> $ProductInfoResultItemParamsInfoToJson(ProductInfoResultItemParamsInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['set'] =  entity.xSet.map((v) => v.toJson()).toList();
	data['key'] = entity.key;
	data['anchor'] = entity.anchor;
	return data;
}

ProductInfoResultItemParamsInfoSet $ProductInfoResultItemParamsInfoSetFromJson(Map<String, dynamic> json) {
	final ProductInfoResultItemParamsInfoSet productInfoResultItemParamsInfoSet = ProductInfoResultItemParamsInfoSet();
	final String? value = jsonConvert.convert<String>(json['value']);
	if (value != null) {
		productInfoResultItemParamsInfoSet.value = value;
	}
	final String? key = jsonConvert.convert<String>(json['key']);
	if (key != null) {
		productInfoResultItemParamsInfoSet.key = key;
	}
	return productInfoResultItemParamsInfoSet;
}

Map<String, dynamic> $ProductInfoResultItemParamsInfoSetToJson(ProductInfoResultItemParamsInfoSet entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['value'] = entity.value;
	data['key'] = entity.key;
	return data;
}

ProductInfoResultItemParamsRule $ProductInfoResultItemParamsRuleFromJson(Map<String, dynamic> json) {
	final ProductInfoResultItemParamsRule productInfoResultItemParamsRule = ProductInfoResultItemParamsRule();
	final List<List>? tables = jsonConvert.convertListNotNull<List>(json['tables']);
	if (tables != null) {
		productInfoResultItemParamsRule.tables = tables;
	}
	final String? key = jsonConvert.convert<String>(json['key']);
	if (key != null) {
		productInfoResultItemParamsRule.key = key;
	}
	final String? anchor = jsonConvert.convert<String>(json['anchor']);
	if (anchor != null) {
		productInfoResultItemParamsRule.anchor = anchor;
	}
	final String? disclaimer = jsonConvert.convert<String>(json['disclaimer']);
	if (disclaimer != null) {
		productInfoResultItemParamsRule.disclaimer = disclaimer;
	}
	return productInfoResultItemParamsRule;
}

Map<String, dynamic> $ProductInfoResultItemParamsRuleToJson(ProductInfoResultItemParamsRule entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['tables'] =  entity.tables;
	data['key'] = entity.key;
	data['anchor'] = entity.anchor;
	data['disclaimer'] = entity.disclaimer;
	return data;
}

ProductInfoResultShopInfo $ProductInfoResultShopInfoFromJson(Map<String, dynamic> json) {
	final ProductInfoResultShopInfo productInfoResultShopInfo = ProductInfoResultShopInfo();
	final List<ProductInfoResultShopInfoScore>? score = jsonConvert.convertListNotNull<ProductInfoResultShopInfoScore>(json['score']);
	if (score != null) {
		productInfoResultShopInfo.score = score;
	}
	final List<ProductInfoResultShopInfoServices>? services = jsonConvert.convertListNotNull<ProductInfoResultShopInfoServices>(json['services']);
	if (services != null) {
		productInfoResultShopInfo.services = services;
	}
	final List<ProductInfoResultShopInfoCategories>? categories = jsonConvert.convertListNotNull<ProductInfoResultShopInfoCategories>(json['categories']);
	if (categories != null) {
		productInfoResultShopInfo.categories = categories;
	}
	final int? cFans = jsonConvert.convert<int>(json['cFans']);
	if (cFans != null) {
		productInfoResultShopInfo.cFans = cFans;
	}
	final int? cSells = jsonConvert.convert<int>(json['cSells']);
	if (cSells != null) {
		productInfoResultShopInfo.cSells = cSells;
	}
	final String? allGoodsUrl = jsonConvert.convert<String>(json['allGoodsUrl']);
	if (allGoodsUrl != null) {
		productInfoResultShopInfo.allGoodsUrl = allGoodsUrl;
	}
	final String? shopUrl = jsonConvert.convert<String>(json['shopUrl']);
	if (shopUrl != null) {
		productInfoResultShopInfo.shopUrl = shopUrl;
	}
	final bool? isMarked = jsonConvert.convert<bool>(json['isMarked']);
	if (isMarked != null) {
		productInfoResultShopInfo.isMarked = isMarked;
	}
	final int? cGoods = jsonConvert.convert<int>(json['cGoods']);
	if (cGoods != null) {
		productInfoResultShopInfo.cGoods = cGoods;
	}
	final String? userId = jsonConvert.convert<String>(json['userId']);
	if (userId != null) {
		productInfoResultShopInfo.userId = userId;
	}
	final String? shopLogo = jsonConvert.convert<String>(json['shopLogo']);
	if (shopLogo != null) {
		productInfoResultShopInfo.shopLogo = shopLogo;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		productInfoResultShopInfo.name = name;
	}
	final String? shopId = jsonConvert.convert<String>(json['shopId']);
	if (shopId != null) {
		productInfoResultShopInfo.shopId = shopId;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		productInfoResultShopInfo.type = type;
	}
	final int? level = jsonConvert.convert<int>(json['level']);
	if (level != null) {
		productInfoResultShopInfo.level = level;
	}
	final bool? nonsupportReasonRefound = jsonConvert.convert<bool>(json['nonsupportReasonRefound']);
	if (nonsupportReasonRefound != null) {
		productInfoResultShopInfo.nonsupportReasonRefound = nonsupportReasonRefound;
	}
	return productInfoResultShopInfo;
}

Map<String, dynamic> $ProductInfoResultShopInfoToJson(ProductInfoResultShopInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['score'] =  entity.score.map((v) => v.toJson()).toList();
	data['services'] =  entity.services.map((v) => v.toJson()).toList();
	data['categories'] =  entity.categories.map((v) => v.toJson()).toList();
	data['cFans'] = entity.cFans;
	data['cSells'] = entity.cSells;
	data['allGoodsUrl'] = entity.allGoodsUrl;
	data['shopUrl'] = entity.shopUrl;
	data['isMarked'] = entity.isMarked;
	data['cGoods'] = entity.cGoods;
	data['userId'] = entity.userId;
	data['shopLogo'] = entity.shopLogo;
	data['name'] = entity.name;
	data['shopId'] = entity.shopId;
	data['type'] = entity.type;
	data['level'] = entity.level;
	data['nonsupportReasonRefound'] = entity.nonsupportReasonRefound;
	return data;
}

ProductInfoResultShopInfoScore $ProductInfoResultShopInfoScoreFromJson(Map<String, dynamic> json) {
	final ProductInfoResultShopInfoScore productInfoResultShopInfoScore = ProductInfoResultShopInfoScore();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		productInfoResultShopInfoScore.name = name;
	}
	final double? score = jsonConvert.convert<double>(json['score']);
	if (score != null) {
		productInfoResultShopInfoScore.score = score;
	}
	final bool? isBetter = jsonConvert.convert<bool>(json['isBetter']);
	if (isBetter != null) {
		productInfoResultShopInfoScore.isBetter = isBetter;
	}
	return productInfoResultShopInfoScore;
}

Map<String, dynamic> $ProductInfoResultShopInfoScoreToJson(ProductInfoResultShopInfoScore entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['score'] = entity.score;
	data['isBetter'] = entity.isBetter;
	return data;
}

ProductInfoResultShopInfoServices $ProductInfoResultShopInfoServicesFromJson(Map<String, dynamic> json) {
	final ProductInfoResultShopInfoServices productInfoResultShopInfoServices = ProductInfoResultShopInfoServices();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		productInfoResultShopInfoServices.name = name;
	}
	final String? icon = jsonConvert.convert<String>(json['icon']);
	if (icon != null) {
		productInfoResultShopInfoServices.icon = icon;
	}
	return productInfoResultShopInfoServices;
}

Map<String, dynamic> $ProductInfoResultShopInfoServicesToJson(ProductInfoResultShopInfoServices entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['icon'] = entity.icon;
	return data;
}

ProductInfoResultShopInfoCategories $ProductInfoResultShopInfoCategoriesFromJson(Map<String, dynamic> json) {
	final ProductInfoResultShopInfoCategories productInfoResultShopInfoCategories = ProductInfoResultShopInfoCategories();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		productInfoResultShopInfoCategories.name = name;
	}
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		productInfoResultShopInfoCategories.link = link;
	}
	return productInfoResultShopInfoCategories;
}

Map<String, dynamic> $ProductInfoResultShopInfoCategoriesToJson(ProductInfoResultShopInfoCategories entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['link'] = entity.link;
	return data;
}

ProductInfoResultRate $ProductInfoResultRateFromJson(Map<String, dynamic> json) {
	final ProductInfoResultRate productInfoResultRate = ProductInfoResultRate();
	final List<ProductInfoResultRateList>? list = jsonConvert.convertListNotNull<ProductInfoResultRateList>(json['list']);
	if (list != null) {
		productInfoResultRate.list = list;
	}
	final int? cRate = jsonConvert.convert<int>(json['cRate']);
	if (cRate != null) {
		productInfoResultRate.cRate = cRate;
	}
	return productInfoResultRate;
}

Map<String, dynamic> $ProductInfoResultRateToJson(ProductInfoResultRate entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['list'] =  entity.list.map((v) => v.toJson()).toList();
	data['cRate'] = entity.cRate;
	return data;
}

ProductInfoResultRateList $ProductInfoResultRateListFromJson(Map<String, dynamic> json) {
	final ProductInfoResultRateList productInfoResultRateList = ProductInfoResultRateList();
	final ProductInfoResultRateListUser? user = jsonConvert.convert<ProductInfoResultRateListUser>(json['user']);
	if (user != null) {
		productInfoResultRateList.user = user;
	}
	final String? rateId = jsonConvert.convert<String>(json['rateId']);
	if (rateId != null) {
		productInfoResultRateList.rateId = rateId;
	}
	final String? content = jsonConvert.convert<String>(json['content']);
	if (content != null) {
		productInfoResultRateList.content = content;
	}
	final int? created = jsonConvert.convert<int>(json['created']);
	if (created != null) {
		productInfoResultRateList.created = created;
	}
	final int? isAnonymous = jsonConvert.convert<int>(json['isAnonymous']);
	if (isAnonymous != null) {
		productInfoResultRateList.isAnonymous = isAnonymous;
	}
	final String? style = jsonConvert.convert<String>(json['style']);
	if (style != null) {
		productInfoResultRateList.style = style;
	}
	final int? isEmpty = jsonConvert.convert<int>(json['isEmpty']);
	if (isEmpty != null) {
		productInfoResultRateList.isEmpty = isEmpty;
	}
	final String? level = jsonConvert.convert<String>(json['level']);
	if (level != null) {
		productInfoResultRateList.level = level;
	}
	final bool? canExplain = jsonConvert.convert<bool>(json['canExplain']);
	if (canExplain != null) {
		productInfoResultRateList.canExplain = canExplain;
	}
	return productInfoResultRateList;
}

Map<String, dynamic> $ProductInfoResultRateListToJson(ProductInfoResultRateList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['user'] = entity.user.toJson();
	data['rateId'] = entity.rateId;
	data['content'] = entity.content;
	data['created'] = entity.created;
	data['isAnonymous'] = entity.isAnonymous;
	data['style'] = entity.style;
	data['isEmpty'] = entity.isEmpty;
	data['level'] = entity.level;
	data['canExplain'] = entity.canExplain;
	return data;
}

ProductInfoResultRateListUser $ProductInfoResultRateListUserFromJson(Map<String, dynamic> json) {
	final ProductInfoResultRateListUser productInfoResultRateListUser = ProductInfoResultRateListUser();
	final String? uid = jsonConvert.convert<String>(json['uid']);
	if (uid != null) {
		productInfoResultRateListUser.uid = uid;
	}
	final String? uname = jsonConvert.convert<String>(json['uname']);
	if (uname != null) {
		productInfoResultRateListUser.uname = uname;
	}
	final String? avatar = jsonConvert.convert<String>(json['avatar']);
	if (avatar != null) {
		productInfoResultRateListUser.avatar = avatar;
	}
	final String? profileUrl = jsonConvert.convert<String>(json['profileUrl']);
	if (profileUrl != null) {
		productInfoResultRateListUser.profileUrl = profileUrl;
	}
	final String? tagIndex = jsonConvert.convert<String>(json['tagIndex']);
	if (tagIndex != null) {
		productInfoResultRateListUser.tagIndex = tagIndex;
	}
	return productInfoResultRateListUser;
}

Map<String, dynamic> $ProductInfoResultRateListUserToJson(ProductInfoResultRateListUser entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['uid'] = entity.uid;
	data['uname'] = entity.uname;
	data['avatar'] = entity.avatar;
	data['profileUrl'] = entity.profileUrl;
	data['tagIndex'] = entity.tagIndex;
	return data;
}