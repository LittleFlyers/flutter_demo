import 'package:flutter_demo/widget/base_widget.dart';

class CardFactory {
  List<String> _imagePaths = <String>[
    "https://img1.baidu.com/it/u=150166265,2845934444&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.ivsky.com%2Fimg%2Fbizhi%2Fpre%2F201507%2F17%2Fkeai_de_dongwu-002.jpg&refer=http%3A%2F%2Fimg.ivsky.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1647139658&t=e63753e4ece7e9ffb539313b08325e8e",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimgsa.baidu.com%2Fexp%2Fw%3D500%2Fsign%3D39fdf7763efa828bd1239de3cd1e41cd%2F1ad5ad6eddc451da04087f98bbfd5266d11632c2.jpg&refer=http%3A%2F%2Fimgsa.baidu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1647139868&t=e9a64e1d85b6ca406fee0fe43b290f72",
    "https://img0.baidu.com/it/u=626984217,3651351219&fm=253&fmt=auto&app=138&f=JPEG?w=650&h=434",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181218%2F67daee6f03d74fb9b6be8a954969dfa1.jpeg&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1647140057&t=c895b2836a030160920db88409084015",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01e8485a275534a80120ba383399e8.jpg%401280w_1l_2o_100sh.jpg&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1647140190&t=67bd0fe6deed1443613401fd0f889aed",
    "https://img0.baidu.com/it/u=2833406321,2931267031&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=510",
    "https://pics6.baidu.com/feed/8435e5dde71190efbf0861357e15d610fcfa607a.jpeg?token=c8fa6ccdc549e2c0d07981ef60476599&s=AA093A6E4D1044558827EA6A0300607B",
    "https://img1.baidu.com/it/u=1719588401,1330175289&fm=253&fmt=auto&app=138&f=JPEG?w=529&h=500",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fcn.best-wallpaper.net%2Fwallpaper%2F1366x768%2F1207%2FLovely-pets-rabbit_1366x768.jpg&refer=http%3A%2F%2Fcn.best-wallpaper.net&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1647073016&t=1f21f74b5db72a5179a62a259d37476d",
    "https://img0.baidu.com/it/u=265430308,3663060810&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=750",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_match%2F0%2F10973632595%2F0.jpg&refer=http%3A%2F%2Finews.gtimg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1647073236&t=7e1886c239a9c74ac0940f785dd300be",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.alicdn.com%2Ftfscom%2Fi1%2F171927842%2FTB20zcmfKtTMeFjSZFOXXaTiVXa_%21%21171927842.jpg&refer=http%3A%2F%2Fimg.alicdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1647073293&t=5b950e9374b80fa60423d63a8bf2eba7",
    "https://img1.baidu.com/it/u=2431793820,1758261404&fm=253&fmt=auto&app=120&f=JPEG?w=800&h=500",
    "https://img0.baidu.com/it/u=1310710956,1914711937&fm=253&fmt=auto&app=120&f=JPEG?w=480&h=853",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fci.xiaohongshu.com%2Fc1591968-26be-a638-69a3-e839e3167f32%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fci.xiaohongshu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1647140854&t=e79a607052c558f53e151015afe120c1",
  ];
  List<String> _contentTexts = <String>[
    "两只吐舌头的二哈",
    "傻笑的巴哥",
    "扎两个小辫子",
    "草地上微笑的阿拉斯加",
    "叼着小棍的狗狗",
    "法斗插画",
    "叼着花花等你的萨摩耶",
    "这是一只小猫",
    "这是一只小猫和一只小狗",
    "三只住在杯子里的小兔子",
    "两只草地上的小金毛",
    "去沙滩玩的柯基",
    "呆呆的龙猫",
    "三只吐舌头的小金毛",
    "雪地上的美短",
    "一只小比熊",
  ];
  List<String> _userNames = <String>[
    "一只冰棍",
    "leewis",
    "不会逃跑",
    "轻轻的小草",
    "快跑小狗",
    "一个插画师",
    "一个小白狗",
    "月影风情",
    "一只太阳",
    "不怕风",
    "没有狗了",
    "快点回家",
    "不许吃饭",
    "吃的胖胖的",
    "一只老虎",
    "大白狼狼",
    "安生",
  ];
  List<int> _loveCounts = <int>[
    78,
    375,
    45,
    68,
    37,
    173,
    472,
    635,
    15,
    10,
    124,
    1224,
    122,
    22,
    272,
    92,
  ];

  int _index = -1;

  //创建固定数量个卡片
  List<CardWidget> createCards(double width, int count) {
    List<CardWidget> cards = <CardWidget>[];
    for (int i = 0; i < count; i++) {
      int index = _getIndex();
      cards.insert(
          i,
          CardWidget(
            _imagePaths[index],
            userName: _userNames[index],
            contentText: _contentTexts[index],
            loveCount: _loveCounts[index],
            width: width,
          ));
    }
    return cards;
  }

  int _getIndex() {
    if (_index == 15) {
      _index = 0;
    } else {
      _index++;
    }
    return _index;
  }
}
