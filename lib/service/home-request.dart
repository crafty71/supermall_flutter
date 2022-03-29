
import 'package:supermall/model/banner_item_entity.dart';
import 'package:supermall/model/good_list_item_entity.dart';


import '../../service/http_request.dart';

class HomeRequest {

  static Future requestHomeBanner() async {
    const BannerURL = "/home/multidata";

    final result = await HttpRequest.request(BannerURL);

    final bannerList = result['data']['banner']['list'];
    final List<BannerItemList> banner = [];
    for (var banner1 in bannerList) {
      banner.add(BannerItemList.fromJson(banner1));
    }
    return banner;
  }



  static Future requestHomeGoodList(String type, int page) async {
    const URL = "/home/data";
    final params = {'type': type, 'page': page};

    final result = await HttpRequest.request(URL, params: params);
    final finalist = result["data"]["list"];
    List<GoodListItemList> GoogListItem = [];
    for(var goodliestItem in finalist){
      GoogListItem.add(GoodListItemList.fromJson(goodliestItem));
    }
    return GoogListItem;
  }

}
