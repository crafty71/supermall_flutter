import 'package:supermall/generated/json/base/json_convert_content.dart';
import 'package:supermall/model/good_list_item_entity.dart';

GoodListItemEntity $GoodListItemEntityFromJson(Map<String, dynamic> json) {
	final GoodListItemEntity goodListItemEntity = GoodListItemEntity();
	final List<GoodListItemList>? list = jsonConvert.convertListNotNull<GoodListItemList>(json['list']);
	if (list != null) {
		goodListItemEntity.list = list;
	}
	return goodListItemEntity;
}

Map<String, dynamic> $GoodListItemEntityToJson(GoodListItemEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['list'] =  entity.list.map((v) => v.toJson()).toList();
	return data;
}

GoodListItemList $GoodListItemListFromJson(Map<String, dynamic> json) {
	final GoodListItemList goodListItemList = GoodListItemList();
	final int? itemType = jsonConvert.convert<int>(json['itemType']);
	if (itemType != null) {
		goodListItemList.itemType = itemType;
	}
	final String? ptpC = jsonConvert.convert<String>(json['ptpC']);
	if (ptpC != null) {
		goodListItemList.ptpC = ptpC;
	}
	final dynamic? titleTags = jsonConvert.convert<dynamic>(json['titleTags']);
	if (titleTags != null) {
		goodListItemList.titleTags = titleTags;
	}
	final String? clientUrl = jsonConvert.convert<String>(json['clientUrl']);
	if (clientUrl != null) {
		goodListItemList.clientUrl = clientUrl;
	}
	final String? iid = jsonConvert.convert<String>(json['iid']);
	if (iid != null) {
		goodListItemList.iid = iid;
	}
	final GoodListItemListShowLarge? showLarge = jsonConvert.convert<GoodListItemListShowLarge>(json['showLarge']);
	if (showLarge != null) {
		goodListItemList.showLarge = showLarge;
	}
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		goodListItemList.link = link;
	}
	final GoodListItemListShow? xShow = jsonConvert.convert<GoodListItemListShow>(json['show']);
	if (xShow != null) {
		goodListItemList.xShow = xShow;
	}
	final String? itemMarks = jsonConvert.convert<String>(json['itemMarks']);
	if (itemMarks != null) {
		goodListItemList.itemMarks = itemMarks;
	}
	final String? acm = jsonConvert.convert<String>(json['acm']);
	if (acm != null) {
		goodListItemList.acm = acm;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		goodListItemList.type = type;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		goodListItemList.title = title;
	}
	final String? orgPrice = jsonConvert.convert<String>(json['orgPrice']);
	if (orgPrice != null) {
		goodListItemList.orgPrice = orgPrice;
	}
	final String? cparam = jsonConvert.convert<String>(json['cparam']);
	if (cparam != null) {
		goodListItemList.cparam = cparam;
	}
	final List<String>? props = jsonConvert.convertListNotNull<String>(json['props']);
	if (props != null) {
		goodListItemList.props = props;
	}
	final List<dynamic>? lefttopTaglist = jsonConvert.convertListNotNull<dynamic>(json['lefttop_taglist']);
	if (lefttopTaglist != null) {
		goodListItemList.lefttopTaglist = lefttopTaglist;
	}
	final int? sale = jsonConvert.convert<int>(json['sale']);
	if (sale != null) {
		goodListItemList.sale = sale;
	}
	final String? price = jsonConvert.convert<String>(json['price']);
	if (price != null) {
		goodListItemList.price = price;
	}
	final int? cfav = jsonConvert.convert<int>(json['cfav']);
	if (cfav != null) {
		goodListItemList.cfav = cfav;
	}
	final List<dynamic>? leftbottomTaglist = jsonConvert.convertListNotNull<dynamic>(json['leftbottom_taglist']);
	if (leftbottomTaglist != null) {
		goodListItemList.leftbottomTaglist = leftbottomTaglist;
	}
	final int? shopId = jsonConvert.convert<int>(json['shopId']);
	if (shopId != null) {
		goodListItemList.shopId = shopId;
	}
	final int? popularStar = jsonConvert.convert<int>(json['popularStar']);
	if (popularStar != null) {
		goodListItemList.popularStar = popularStar;
	}
	return goodListItemList;
}

Map<String, dynamic> $GoodListItemListToJson(GoodListItemList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['itemType'] = entity.itemType;
	data['ptpC'] = entity.ptpC;
	data['titleTags'] = entity.titleTags;
	data['clientUrl'] = entity.clientUrl;
	data['iid'] = entity.iid;
	data['showLarge'] = entity.showLarge.toJson();
	data['link'] = entity.link;
	data['show'] = entity.xShow.toJson();
	data['itemMarks'] = entity.itemMarks;
	data['acm'] = entity.acm;
	data['type'] = entity.type;
	data['title'] = entity.title;
	data['orgPrice'] = entity.orgPrice;
	data['cparam'] = entity.cparam;
	data['props'] =  entity.props;
	data['lefttop_taglist'] =  entity.lefttopTaglist;
	data['sale'] = entity.sale;
	data['price'] = entity.price;
	data['cfav'] = entity.cfav;
	data['leftbottom_taglist'] =  entity.leftbottomTaglist;
	data['shopId'] = entity.shopId;
	data['popularStar'] = entity.popularStar;
	return data;
}

GoodListItemListShowLarge $GoodListItemListShowLargeFromJson(Map<String, dynamic> json) {
	final GoodListItemListShowLarge goodListItemListShowLarge = GoodListItemListShowLarge();
	final String? img = jsonConvert.convert<String>(json['img']);
	if (img != null) {
		goodListItemListShowLarge.img = img;
	}
	final int? w = jsonConvert.convert<int>(json['w']);
	if (w != null) {
		goodListItemListShowLarge.w = w;
	}
	final int? h = jsonConvert.convert<int>(json['h']);
	if (h != null) {
		goodListItemListShowLarge.h = h;
	}
	return goodListItemListShowLarge;
}

Map<String, dynamic> $GoodListItemListShowLargeToJson(GoodListItemListShowLarge entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['img'] = entity.img;
	data['w'] = entity.w;
	data['h'] = entity.h;
	return data;
}

GoodListItemListShow $GoodListItemListShowFromJson(Map<String, dynamic> json) {
	final GoodListItemListShow goodListItemListShow = GoodListItemListShow();
	final String? img = jsonConvert.convert<String>(json['img']);
	if (img != null) {
		goodListItemListShow.img = img;
	}
	final int? w = jsonConvert.convert<int>(json['w']);
	if (w != null) {
		goodListItemListShow.w = w;
	}
	final int? h = jsonConvert.convert<int>(json['h']);
	if (h != null) {
		goodListItemListShow.h = h;
	}
	return goodListItemListShow;
}

Map<String, dynamic> $GoodListItemListShowToJson(GoodListItemListShow entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['img'] = entity.img;
	data['w'] = entity.w;
	data['h'] = entity.h;
	return data;
}