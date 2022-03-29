import 'package:supermall/generated/json/base/json_convert_content.dart';
import 'package:supermall/model/recommend_item_entity.dart';

RecommendItemEntity $RecommendItemEntityFromJson(Map<String, dynamic> json) {
	final RecommendItemEntity recommendItemEntity = RecommendItemEntity();
	final List<RecommendItemList>? list = jsonConvert.convertListNotNull<RecommendItemList>(json['list']);
	if (list != null) {
		recommendItemEntity.list = list;
	}
	return recommendItemEntity;
}

Map<String, dynamic> $RecommendItemEntityToJson(RecommendItemEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['list'] =  entity.list.map((v) => v.toJson()).toList();
	return data;
}

RecommendItemList $RecommendItemListFromJson(Map<String, dynamic> json) {
	final RecommendItemList recommendItemList = RecommendItemList();
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		recommendItemList.image = image;
	}
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		recommendItemList.link = link;
	}
	final String? acm = jsonConvert.convert<String>(json['acm']);
	if (acm != null) {
		recommendItemList.acm = acm;
	}
	final int? sort = jsonConvert.convert<int>(json['sort']);
	if (sort != null) {
		recommendItemList.sort = sort;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		recommendItemList.title = title;
	}
	return recommendItemList;
}

Map<String, dynamic> $RecommendItemListToJson(RecommendItemList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['image'] = entity.image;
	data['link'] = entity.link;
	data['acm'] = entity.acm;
	data['sort'] = entity.sort;
	data['title'] = entity.title;
	return data;
}