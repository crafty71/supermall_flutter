// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:supermall/model/banner_item_entity.dart';
import 'package:supermall/generated/json/banner_item_entity.g.dart';
import 'package:supermall/model/category_detail_entity.dart';
import 'package:supermall/generated/json/category_detail_entity.g.dart';
import 'package:supermall/model/category_item_entity.dart';
import 'package:supermall/generated/json/category_item_entity.g.dart';
import 'package:supermall/model/category_list_entity.dart';
import 'package:supermall/generated/json/category_list_entity.g.dart';
import 'package:supermall/model/good_list_item_entity.dart';
import 'package:supermall/generated/json/good_list_item_entity.g.dart';
import 'package:supermall/model/product_info_entity.dart';
import 'package:supermall/generated/json/product_info_entity.g.dart';
import 'package:supermall/model/product_info_recommend_entity.dart';
import 'package:supermall/generated/json/product_info_recommend_entity.g.dart';
import 'package:supermall/model/recommend_item_entity.dart';
import 'package:supermall/generated/json/recommend_item_entity.g.dart';

JsonConvert jsonConvert = JsonConvert();

class JsonConvert {

  T? convert<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    return asT<T>(value);
  }

  List<T?>? convertList<T>(List<dynamic>? value) {
    if (value == null) {
      return null;
    }
    try {
      return value.map((dynamic e) => asT<T>(e)).toList();
    } catch (e, stackTrace) {
      print('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  List<T>? convertListNotNull<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    try {
      return (value as List<dynamic>).map((dynamic e) => asT<T>(e)!).toList();
    } catch (e, stackTrace) {
      print('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }
  T? asT<T extends Object?>(dynamic value) {
    if (value is T) {
      return value;
    }
		final String type = T.toString();
    try {
      final String valueS = value.toString();
      if (type == "String") {
        return valueS as T;
      } else if (type == "int") {
        final int? intValue = int.tryParse(valueS);
        if (intValue == null) {
          return double.tryParse(valueS)?.toInt() as T?;
        } else {
          return intValue as T;
        }      } else if (type == "double") {
        return double.parse(valueS) as T;
      } else if (type ==  "DateTime") {
        return DateTime.parse(valueS) as T;
      } else if (type ==  "bool") {
        if (valueS == '0' || valueS == '1') {
          return (valueS == '1') as T;
        }
        return (valueS == 'true') as T;
      } else {
        return JsonConvert.fromJsonAsT<T>(value);
      }
    } catch (e, stackTrace) {
      print('asT<$T> $e $stackTrace');
      return null;
    }
  } 
	//Go back to a single instance by type
	static M? _fromJsonSingle<M>(Map<String, dynamic> json) {
		final String type = M.toString();
		if(type == (BannerItemEntity).toString()){
			return BannerItemEntity.fromJson(json) as M;
		}
		if(type == (BannerItemList).toString()){
			return BannerItemList.fromJson(json) as M;
		}
		if(type == (CategoryDetailEntity).toString()){
			return CategoryDetailEntity.fromJson(json) as M;
		}
		if(type == (CategoryDetailShopDsr).toString()){
			return CategoryDetailShopDsr.fromJson(json) as M;
		}
		if(type == (CategoryItemEntity).toString()){
			return CategoryItemEntity.fromJson(json) as M;
		}
		if(type == (CategoryListEntity).toString()){
			return CategoryListEntity.fromJson(json) as M;
		}
		if(type == (GoodListItemEntity).toString()){
			return GoodListItemEntity.fromJson(json) as M;
		}
		if(type == (GoodListItemList).toString()){
			return GoodListItemList.fromJson(json) as M;
		}
		if(type == (GoodListItemListShowLarge).toString()){
			return GoodListItemListShowLarge.fromJson(json) as M;
		}
		if(type == (GoodListItemListShow).toString()){
			return GoodListItemListShow.fromJson(json) as M;
		}
		if(type == (ProductInfoEntity).toString()){
			return ProductInfoEntity.fromJson(json) as M;
		}
		if(type == (ProductInfoResult).toString()){
			return ProductInfoResult.fromJson(json) as M;
		}
		if(type == (ProductInfoResultSkuInfo).toString()){
			return ProductInfoResultSkuInfo.fromJson(json) as M;
		}
		if(type == (ProductInfoResultSkuInfoSkus).toString()){
			return ProductInfoResultSkuInfoSkus.fromJson(json) as M;
		}
		if(type == (ProductInfoResultSkuInfoProps).toString()){
			return ProductInfoResultSkuInfoProps.fromJson(json) as M;
		}
		if(type == (ProductInfoResultSkuInfoPropsList).toString()){
			return ProductInfoResultSkuInfoPropsList.fromJson(json) as M;
		}
		if(type == (ProductInfoResultItemInfo).toString()){
			return ProductInfoResultItemInfo.fromJson(json) as M;
		}
		if(type == (ProductInfoResultItemInfoExtra).toString()){
			return ProductInfoResultItemInfoExtra.fromJson(json) as M;
		}
		if(type == (ProductInfoResultTopBar).toString()){
			return ProductInfoResultTopBar.fromJson(json) as M;
		}
		if(type == (ProductInfoResultDetailInfo).toString()){
			return ProductInfoResultDetailInfo.fromJson(json) as M;
		}
		if(type == (ProductInfoResultDetailInfoDetailImage).toString()){
			return ProductInfoResultDetailInfoDetailImage.fromJson(json) as M;
		}
		if(type == (ProductInfoResultPromotions).toString()){
			return ProductInfoResultPromotions.fromJson(json) as M;
		}
		if(type == (ProductInfoResultPromotionsAlertData).toString()){
			return ProductInfoResultPromotionsAlertData.fromJson(json) as M;
		}
		if(type == (ProductInfoResultItemParams).toString()){
			return ProductInfoResultItemParams.fromJson(json) as M;
		}
		if(type == (ProductInfoResultItemParamsInfo).toString()){
			return ProductInfoResultItemParamsInfo.fromJson(json) as M;
		}
		if(type == (ProductInfoResultItemParamsInfoSet).toString()){
			return ProductInfoResultItemParamsInfoSet.fromJson(json) as M;
		}
		if(type == (ProductInfoResultItemParamsRule).toString()){
			return ProductInfoResultItemParamsRule.fromJson(json) as M;
		}
		if(type == (ProductInfoResultShopInfo).toString()){
			return ProductInfoResultShopInfo.fromJson(json) as M;
		}
		if(type == (ProductInfoResultShopInfoScore).toString()){
			return ProductInfoResultShopInfoScore.fromJson(json) as M;
		}
		if(type == (ProductInfoResultShopInfoServices).toString()){
			return ProductInfoResultShopInfoServices.fromJson(json) as M;
		}
		if(type == (ProductInfoResultShopInfoCategories).toString()){
			return ProductInfoResultShopInfoCategories.fromJson(json) as M;
		}
		if(type == (ProductInfoResultRate).toString()){
			return ProductInfoResultRate.fromJson(json) as M;
		}
		if(type == (ProductInfoResultRateList).toString()){
			return ProductInfoResultRateList.fromJson(json) as M;
		}
		if(type == (ProductInfoResultRateListUser).toString()){
			return ProductInfoResultRateListUser.fromJson(json) as M;
		}
		if(type == (ProductInfoRecommendEntity).toString()){
			return ProductInfoRecommendEntity.fromJson(json) as M;
		}
		if(type == (RecommendItemEntity).toString()){
			return RecommendItemEntity.fromJson(json) as M;
		}
		if(type == (RecommendItemList).toString()){
			return RecommendItemList.fromJson(json) as M;
		}

		print("$type not found");
	
		return null;
}

  //list is returned by type
	static M? _getListChildType<M>(List<Map<String, dynamic>> data) {
		if(<BannerItemEntity>[] is M){
			return data.map<BannerItemEntity>((Map<String, dynamic> e) => BannerItemEntity.fromJson(e)).toList() as M;
		}
		if(<BannerItemList>[] is M){
			return data.map<BannerItemList>((Map<String, dynamic> e) => BannerItemList.fromJson(e)).toList() as M;
		}
		if(<CategoryDetailEntity>[] is M){
			return data.map<CategoryDetailEntity>((Map<String, dynamic> e) => CategoryDetailEntity.fromJson(e)).toList() as M;
		}
		if(<CategoryDetailShopDsr>[] is M){
			return data.map<CategoryDetailShopDsr>((Map<String, dynamic> e) => CategoryDetailShopDsr.fromJson(e)).toList() as M;
		}
		if(<CategoryItemEntity>[] is M){
			return data.map<CategoryItemEntity>((Map<String, dynamic> e) => CategoryItemEntity.fromJson(e)).toList() as M;
		}
		if(<CategoryListEntity>[] is M){
			return data.map<CategoryListEntity>((Map<String, dynamic> e) => CategoryListEntity.fromJson(e)).toList() as M;
		}
		if(<GoodListItemEntity>[] is M){
			return data.map<GoodListItemEntity>((Map<String, dynamic> e) => GoodListItemEntity.fromJson(e)).toList() as M;
		}
		if(<GoodListItemList>[] is M){
			return data.map<GoodListItemList>((Map<String, dynamic> e) => GoodListItemList.fromJson(e)).toList() as M;
		}
		if(<GoodListItemListShowLarge>[] is M){
			return data.map<GoodListItemListShowLarge>((Map<String, dynamic> e) => GoodListItemListShowLarge.fromJson(e)).toList() as M;
		}
		if(<GoodListItemListShow>[] is M){
			return data.map<GoodListItemListShow>((Map<String, dynamic> e) => GoodListItemListShow.fromJson(e)).toList() as M;
		}
		if(<ProductInfoEntity>[] is M){
			return data.map<ProductInfoEntity>((Map<String, dynamic> e) => ProductInfoEntity.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResult>[] is M){
			return data.map<ProductInfoResult>((Map<String, dynamic> e) => ProductInfoResult.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultSkuInfo>[] is M){
			return data.map<ProductInfoResultSkuInfo>((Map<String, dynamic> e) => ProductInfoResultSkuInfo.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultSkuInfoSkus>[] is M){
			return data.map<ProductInfoResultSkuInfoSkus>((Map<String, dynamic> e) => ProductInfoResultSkuInfoSkus.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultSkuInfoProps>[] is M){
			return data.map<ProductInfoResultSkuInfoProps>((Map<String, dynamic> e) => ProductInfoResultSkuInfoProps.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultSkuInfoPropsList>[] is M){
			return data.map<ProductInfoResultSkuInfoPropsList>((Map<String, dynamic> e) => ProductInfoResultSkuInfoPropsList.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultItemInfo>[] is M){
			return data.map<ProductInfoResultItemInfo>((Map<String, dynamic> e) => ProductInfoResultItemInfo.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultItemInfoExtra>[] is M){
			return data.map<ProductInfoResultItemInfoExtra>((Map<String, dynamic> e) => ProductInfoResultItemInfoExtra.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultTopBar>[] is M){
			return data.map<ProductInfoResultTopBar>((Map<String, dynamic> e) => ProductInfoResultTopBar.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultDetailInfo>[] is M){
			return data.map<ProductInfoResultDetailInfo>((Map<String, dynamic> e) => ProductInfoResultDetailInfo.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultDetailInfoDetailImage>[] is M){
			return data.map<ProductInfoResultDetailInfoDetailImage>((Map<String, dynamic> e) => ProductInfoResultDetailInfoDetailImage.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultPromotions>[] is M){
			return data.map<ProductInfoResultPromotions>((Map<String, dynamic> e) => ProductInfoResultPromotions.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultPromotionsAlertData>[] is M){
			return data.map<ProductInfoResultPromotionsAlertData>((Map<String, dynamic> e) => ProductInfoResultPromotionsAlertData.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultItemParams>[] is M){
			return data.map<ProductInfoResultItemParams>((Map<String, dynamic> e) => ProductInfoResultItemParams.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultItemParamsInfo>[] is M){
			return data.map<ProductInfoResultItemParamsInfo>((Map<String, dynamic> e) => ProductInfoResultItemParamsInfo.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultItemParamsInfoSet>[] is M){
			return data.map<ProductInfoResultItemParamsInfoSet>((Map<String, dynamic> e) => ProductInfoResultItemParamsInfoSet.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultItemParamsRule>[] is M){
			return data.map<ProductInfoResultItemParamsRule>((Map<String, dynamic> e) => ProductInfoResultItemParamsRule.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultShopInfo>[] is M){
			return data.map<ProductInfoResultShopInfo>((Map<String, dynamic> e) => ProductInfoResultShopInfo.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultShopInfoScore>[] is M){
			return data.map<ProductInfoResultShopInfoScore>((Map<String, dynamic> e) => ProductInfoResultShopInfoScore.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultShopInfoServices>[] is M){
			return data.map<ProductInfoResultShopInfoServices>((Map<String, dynamic> e) => ProductInfoResultShopInfoServices.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultShopInfoCategories>[] is M){
			return data.map<ProductInfoResultShopInfoCategories>((Map<String, dynamic> e) => ProductInfoResultShopInfoCategories.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultRate>[] is M){
			return data.map<ProductInfoResultRate>((Map<String, dynamic> e) => ProductInfoResultRate.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultRateList>[] is M){
			return data.map<ProductInfoResultRateList>((Map<String, dynamic> e) => ProductInfoResultRateList.fromJson(e)).toList() as M;
		}
		if(<ProductInfoResultRateListUser>[] is M){
			return data.map<ProductInfoResultRateListUser>((Map<String, dynamic> e) => ProductInfoResultRateListUser.fromJson(e)).toList() as M;
		}
		if(<ProductInfoRecommendEntity>[] is M){
			return data.map<ProductInfoRecommendEntity>((Map<String, dynamic> e) => ProductInfoRecommendEntity.fromJson(e)).toList() as M;
		}
		if(<RecommendItemEntity>[] is M){
			return data.map<RecommendItemEntity>((Map<String, dynamic> e) => RecommendItemEntity.fromJson(e)).toList() as M;
		}
		if(<RecommendItemList>[] is M){
			return data.map<RecommendItemList>((Map<String, dynamic> e) => RecommendItemList.fromJson(e)).toList() as M;
		}

		print("${M.toString()} not found");
	
		return null;
}

  static M? fromJsonAsT<M>(dynamic json) {
		if(json == null){
			return null;
		}		if (json is List) {
			return _getListChildType<M>(json.map((e) => e as Map<String, dynamic>).toList());
		} else {
			return _fromJsonSingle<M>(json as Map<String, dynamic>);
		}
	}
}