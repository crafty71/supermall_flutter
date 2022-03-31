import 'package:supermall/generated/json/base/json_field.dart';
import 'package:supermall/generated/json/category_list_entity.g.dart';

@JsonSerializable()
class CategoryListEntity {

	late String miniWallkey;
	late String maitKey;
	late String acm;
	late String title;
  
  CategoryListEntity();

  factory CategoryListEntity.fromJson(Map<String, dynamic> json) => $CategoryListEntityFromJson(json);

  Map<String, dynamic> toJson() => $CategoryListEntityToJson(this);

  @override
  String toString() {
    return 'CategoryListEntity{miniWallkey: $miniWallkey, maitKey: $maitKey, acm: $acm, title: $title}';
  }
}