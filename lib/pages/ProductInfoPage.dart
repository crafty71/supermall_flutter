import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supermall/model/product_info_entity.dart';
import 'package:supermall/service/product_info_request.dart';

class ProductInfoPage extends StatefulWidget {
  final Map arguments;
  const ProductInfoPage({Key? key, required this.arguments}) : super(key: key);

  @override
  _ProductInfoPageState createState() =>
      _ProductInfoPageState(arguments: this.arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  Map arguments;
  final List<ProductInfoResult> productInfo = [];
  List<ProductInfoResultItemInfo> itemInfo = [];
  late List topImage = [];
  String iid = '';
  String productInfoTitle = '';
  String lowPrice = '';
  String highPrice = '';
  String lowNowPrice = '';
  String highNowPrice = '';
  String discountDesc = '';
  List columns = [];
  List Services = [];
  List ShopInfo = [];
  String shopLogo = '';
  String shopName = '';
  String cSells = '';
  String cGoods = '';
  List score = [];
  List detailImage = [];
  List itemParamsRule = [];
  List itemParamsSet = [];
  List RateList = [];

  _ProductInfoPageState({required this.arguments});

  @override
  void initState() {
    super.initState();
    setState(() {
      iid = arguments["pid"];
    });
    prodoctInfoRequest.requestProdoctInfo(iid).then((value) {
      setState(() {
        productInfo.addAll(value);
        for (var item in productInfo) {
          setState(() {
            itemInfo.add(item.itemInfo);
            columns.addAll(item.columns);
            Services.addAll(item.shopInfo.services);
            shopLogo = item.shopInfo.shopLogo;
            shopName = item.shopInfo.name;
            cSells = "${item.shopInfo.cSells}";
            cGoods = "${item.shopInfo.cGoods}";
            score.addAll(item.shopInfo.score);
            itemParamsRule.addAll(item.itemParams.rule.tables[0]);
            itemParamsSet.addAll(item.itemParams.info.xSet);
            RateList.addAll(item.rate.list);
            print(itemParamsSet);

            for (var item in item.detailInfo.detailImage) {
              detailImage.addAll(item.list);
            }
          });
        }
        for (var item in itemInfo) {
          setState(() {
            topImage = (item.topImages);
            productInfoTitle = item.title;
            lowPrice = item.lowPrice;
            highPrice = item.highPrice;
            lowNowPrice = item.lowNowPrice;
            highNowPrice = item.highNowPrice;
            discountDesc = item.discountDesc;
          });
        }
      });
    });
  }

  List<Widget> _getList() {
    return columns.map((value) {
      return Text(
        value,
        style: const TextStyle(color: Colors.black45),
      );
    }).toList();
  }

  List<Widget> _Services() {
    return Services.map((value) {
      return Wrap(
        children: [
          // Image.network("http:${value.icon}", width: 14, height: 14, ),
          // Icon(Icons.volunteer_activism),
          const SizedBox(
            width: 5,
          ),
          Text(
            "${value.name}",
            style: const TextStyle(color: Colors.black),
          ),
        ],
      );
    }).toList();
  }

  List<Widget> _scoreRate() {
    return score.map((item) {
      return Container(
        padding: const EdgeInsets.only(bottom: 5),
        child: Row(
          children: [
            Text(item.name),
            const SizedBox(
              width: 10,
            ),
            Text(
              "${item.score}",
              style: const TextStyle(color: Colors.green),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              color: item.isBetter == true ? Colors.green : Colors.red,
              padding: const EdgeInsets.fromLTRB(4, 1, 4, 2),
              child: Text(
                item.isBetter == true ? "高" : "低",
                style: const TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      );
    }).toList();
  }

  List<Widget> _Product() {
    return detailImage.map((item) {
      return Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: Image.network(
            "http:${item}",
          ));
    }).toList();
  }
// .toList().cast<Widget>() 很关键
  List<Widget> _TableSell(item) {
    return item.map((value) {
      print(item);
      return Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Text(
          "${value}",
          textAlign: TextAlign.center,
        ),
      );
    }).toList().cast<Widget>();
  }

  List<TableRow> _TableRow() {
    return itemParamsRule.map((item){
      return TableRow(
        children: _TableSell(item)
      );
    }).toList().cast<TableRow>();
  }

  Widget _Tabbar() {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.pinkAccent,
            labelColor: Colors.pinkAccent,
            onTap: (index) {},
            tabs: const [
              Tab(
                text: "商品",
              ),
              Tab(
                text: "参数",
              ),
              Tab(
                text: "评论",
              ),
              Tab(
                text: "推荐",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _swiperWidget() {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Swiper(
          itemCount: topImage.length,
          pagination: const SwiperPagination(),
          autoplay: true,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Image.network(
                "http:${topImage[index]}",
                fit: BoxFit.fill,
              ),
            );
          }),
    );
  }

  Widget _priceWidget() {
    return Column(
      children: [
        Text(productInfoTitle),
        const SizedBox(
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '￥$lowNowPrice~',
                style: const TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 18,
                ),
              ),
              Text(
                "￥$highNowPrice",
                style: const TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text("¥$lowPrice~",
                  style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                      decoration: TextDecoration.lineThrough)),
              Text("¥$highPrice",
                  style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                      decoration: TextDecoration.lineThrough)),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all(width: 1, color: Colors.red),
                ),
                child: Text(
                  "$discountDesc",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _getList()),
        ),
        const Divider(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _Services()),
        ),
        const Divider(
          height: 16,
          thickness: 5,
          color: Colors.black12,
        ),
      ],
    );
  }

  Widget _shopWidget() {
    return SizedBox(
      height: 160,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              child: Row(
                children: [
                  Image.network(
                    "http:$shopLogo",
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(shopName),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Column(
                      children: [
                        Text(
                          cSells,
                          style: const TextStyle(fontSize: 18),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                          child: Text(
                            "总销量",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          cGoods,
                          style: const TextStyle(fontSize: 18),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                          child: Text(
                            "全部宝贝",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  height: 90,
                  width: 1,
                  color: Colors.black45,
                ),
                SizedBox(
                  height: 90,
                  child: Column(children: _scoreRate()),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _productShow() {
    return Wrap(children: _Product());
  }

  Widget _shopImformation() {
    return Table(
        border: TableBorder(
          horizontalInside: BorderSide(color: Colors.black12),
          // verticalInside: BorderSide(color: Colors.red),
        ),
        children: _TableRow());
  }

  List<Wrap> _itemParamsSet() {
    return itemParamsSet.map((item){
      print(item);
      return Wrap(
        children: _itemParamsSetValue(item)
      );
    }).toList();
  }

  List<Widget> _itemParamsSetValue(item) {
    return item.map((value){
       return Padding(
         padding: const EdgeInsets.all(8.0),
         child: Row(
           children: [
             Text(value.key),
             const SizedBox(
               width: 20,
             ),
             Text(value.value),
           ],
         ),
       );
    }).toList().cast<Widget>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("详情"),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 50,
              child: _Tabbar(),
            ),
            Container(
              child: _swiperWidget(),
            ),
            Container(margin: const EdgeInsets.all(8), child: _priceWidget()),
            Container(
              child: _shopWidget(),
            ),
            const Divider(
              height: 16,
              thickness: 4,
            ),
            Column(
              children: [Text(productInfoTitle)],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: const [Text("穿着效果")],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: _productShow(),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Text("参数信息"),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: _shopImformation(),
            ),
            Container(
              child: Column(
                children: _itemParamsSet(),
              ),
            )
          ],
        ));
  }
}
