
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:card_swiper/card_swiper.dart';
import 'package:supermall/model/banner_item_entity.dart';
import 'package:supermall/model/good_list_item_entity.dart';
import 'package:supermall/service/home-request.dart';
import 'package:supermall/utils/FitSize.dart';
import 'package:url_launcher/url_launcher.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  final List<BannerItemList> Banners = [];
  final List<GoodListItemList> goodItem = [];
  String productItemType = 'pop';
  int page = 1;

 

  void _scrollToend() {
    // scrollController.jumpTo(scrollController.position.maxScrollExtent);
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 1000), curve: Curves.linear);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HomeRequest.requestHomeBanner().then((res) {
      setState(() {
        Banners.addAll(res);
      });
    });
    //requestHomeRecommend
    HomeRequest.requestHomeGoodList(productItemType, page).then((res) {
      setState(() {
        goodItem.addAll(res);
      });
    });
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        setState(() {
          page = page + 1;
        });
        HomeRequest.requestHomeGoodList(productItemType, page).then((res) {
          setState(() {
            goodItem.addAll(res);
          });
        });
      }
    });
  }

  Widget _swiperWidget() {
    return AspectRatio(
      aspectRatio: 2 / 1,
      child: Swiper(
          itemCount: Banners.length,
          pagination: const SwiperPagination(),
          autoplay: true,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Image.network(
                Banners[index].image,
                fit: BoxFit.fill,
              ),
              onTap: () async {
                final url = Banners[index].link;
                if(await canLaunch(url)){
                  await launch(url);
                }else {
                  throw 'Could not launch $url';
                }
              },
            );
          }),
    );
  }


  Widget _recProductListWidget() {
    // var itemWidth = (ScreenAdaper.getScreenWidth() - ScreenAdaper.width(60)) / 3;
    double itemWidth = SizeFit.setPx(172);
    return Wrap(
      runSpacing: SizeFit.setPx(10),
      spacing: SizeFit.setPx(10),
      children: goodItem.map((value) {
        return GestureDetector(
          onTap: () async {
           Navigator.pushNamed(context, '/productinfo',arguments: {
             "pid":value.iid
           });
          },
          child: Container(
            padding:  EdgeInsets.all(SizeFit.setPx(10)),
            width: itemWidth,
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: AspectRatio(
                    //防止服务器返回的图片大小不一致导致高度不一致问题
                    aspectRatio: 1 / 1,
                    child: Image.network(
                      value.showLarge.img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: SizeFit.setPx(20)),
                  child: Text(
                    value.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: SizeFit.setPx(20)),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "¥${value.price}",
                          style: const TextStyle(color: Colors.red, fontSize: 16),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text("¥${value.orgPrice}",
                            style: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                                decoration: TextDecoration.lineThrough)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _Tabbar() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.pinkAccent,
            labelColor: Colors.pinkAccent,
            onTap: (index) {
              if (index == 0) {
                setState(() {
                  productItemType = 'pop';
                  page = 1;
                });
                HomeRequest.requestHomeGoodList(productItemType, page)
                    .then((res) {
                  setState(() {
                    goodItem.clear();
                    goodItem.addAll(res);
                  });
                });
              } else if (index == 1) {
                setState(() {
                  productItemType = 'sell';
                  page = 1;
                });
                HomeRequest.requestHomeGoodList(productItemType, page)
                    .then((res) {
                  setState(() {
                    goodItem.clear();
                    goodItem.addAll(res);
                  });
                });
              } else if (index == 2) {
                setState(() {
                  productItemType = 'new';
                  page = 1;
                });
                HomeRequest.requestHomeGoodList(productItemType, page)
                    .then((res) {
                  setState(() {
                    goodItem.clear();
                    goodItem.addAll(res);
                  });
                });
              }
            },
            tabs: const [
              Tab(
                text: "流行",
              ),
              Tab(
                text: "热门",
              ),
              Tab(
                text: "新品",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _Recommend() {
    return GestureDetector(
      child: Image.asset('assets/images/home/recommend_bg.png'),
      onTap: () async {
        const url = 'https://act.mogujie.com/zzlx67';
        if(await canLaunch(url)){
          await launch(url);
        }else {
          throw 'Could not launch $url';
        }
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    SizeFit.initialize(context);
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        child: const Icon(Icons.upload_rounded),
        onPressed: () {
          _scrollToend();
        },
      ),
      body: ListView(
        controller: _scrollController,
        children: [
          _swiperWidget(),
          SizedBox(height: SizeFit.setPx(20)),
          _Recommend(),
          SizedBox(height: SizeFit.setPx(20)),
          SizedBox(
            height: SizeFit.setPx(50),
            child: _Tabbar(),
          ),
          SizedBox(height: SizeFit.setPx(20)),
          Container(
              padding: const EdgeInsets.all(10),
              child: Wrap(
                runSpacing: 10,
                spacing: 10,
                children: [_recProductListWidget()],
              )),
        ],
      ),
    );
  }
}
