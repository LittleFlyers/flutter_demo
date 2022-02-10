import 'package:flutter_demo/widget/base_widget.dart';

class CardFactory {
  //创建8个卡片
  List<CardWidget> createCards(double width) {
    List<CardWidget> cards = <CardWidget>[
      CardWidget(
        "https://pics6.baidu.com/feed/8435e5dde71190efbf0861357e15d610fcfa607a.jpeg?token=c8fa6ccdc549e2c0d07981ef60476599&s=AA093A6E4D1044558827EA6A0300607B",
        contentText: "这是一只小猫",
        width: width,
        userName: "月影风情",
        loveCount: 15,
      ),
      CardWidget(
        "https://img1.baidu.com/it/u=1719588401,1330175289&fm=253&fmt=auto&app=138&f=JPEG?w=529&h=500",
        contentText: "这是一只小猫和一只小狗",
        width: width,
        userName: "一只太阳",
        loveCount: 10,
      ),
      CardWidget(
        "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fcn.best-wallpaper.net%2Fwallpaper%2F1366x768%2F1207%2FLovely-pets-rabbit_1366x768.jpg&refer=http%3A%2F%2Fcn.best-wallpaper.net&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1647073016&t=1f21f74b5db72a5179a62a259d37476d",
        contentText: "三只住在杯子里的小兔子",
        width: width,
        userName: "不怕风",
        loveCount: 124,
      ),
      CardWidget(
        "https://img0.baidu.com/it/u=265430308,3663060810&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750",
        contentText: "两只草地上的小金毛",
        width: width,
        userName: "没有狗了",
        loveCount: 1224,
      ),
      CardWidget(
        "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_match%2F0%2F10973632595%2F0.jpg&refer=http%3A%2F%2Finews.gtimg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1647073236&t=7e1886c239a9c74ac0940f785dd300be",
        contentText: "去沙滩玩的柯基",
        width: width,
        userName: "快点回家",
        loveCount: 122,
      ),
      CardWidget(
        "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.alicdn.com%2Ftfscom%2Fi1%2F171927842%2FTB20zcmfKtTMeFjSZFOXXaTiVXa_%21%21171927842.jpg&refer=http%3A%2F%2Fimg.alicdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1647073293&t=5b950e9374b80fa60423d63a8bf2eba7",
        contentText: "呆呆的龙猫",
        width: width,
        userName: "不许吃饭",
        loveCount: 22,
      ),
      CardWidget(
        "https://img1.baidu.com/it/u=2431793820,1758261404&fm=253&fmt=auto&app=120&f=JPEG?w=800&h=500",
        contentText: "三只吐舌头的小金毛",
        width: width,
        userName: "吃的胖胖的",
        loveCount: 272,
      ),
      CardWidget(
        "https://img0.baidu.com/it/u=1310710956,1914711937&fm=253&fmt=auto&app=120&f=JPEG?w=480&h=853",
        contentText: "雪地上的美短",
        width: width,
        userName: "一只老虎",
        loveCount: 92,
      ),
    ];
    return cards;
  }
}
