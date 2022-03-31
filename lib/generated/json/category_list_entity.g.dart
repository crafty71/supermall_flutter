import 'package:supermall/generated/json/base/json_convert_content.dart';
import 'package:supermall/model/category_list_entity.dart';

CategoryListEntity $CategoryListEntityFromJson(Map<String, dynamic> json) {
	final CategoryListEntity categoryListEntity = CategoryListEntity();
	final String? miniWallkey = jsonConvert.convert<String>(json['miniWallkey']);
	if (miniWallkey != null) {
		categoryListEntity.miniWallkey = miniWallkey;
	}
	final String? maitKey = jsonConvert.convert<String>(json['maitKey']);
	if (maitKey != null) {
		categoryListEntity.maitKey = maitKey;
	}
	final String? acm = jsonConvert.convert<String>(json['acm']);
	if (acm != null) {
		categoryListEntity.acm = acm;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		categoryListEntity.title = title;
	}
	return categoryListEntity;
}

Map<String, dynamic> $CategoryListEntityToJson(CategoryListEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['miniWallkey'] = entity.miniWallkey;
	data['maitKey'] = entity.maitKey;
	data['acm'] = entity.acm;
	data['title'] = entity.title;
	return data;
}