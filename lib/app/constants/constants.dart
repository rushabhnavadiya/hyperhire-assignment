
import '../modules/home/model/product_model.dart';
import '../modules/home/model/top_rank_model.dart';
import 'constant_images.dart';

class Constants{

  static const List<String> banners = [
    banner1Img,
    banner2Img,
    banner3Img,
    banner4Img
  ];

  final List<ProductModel> products = [
    ProductModel(
        title: "LG전자  ",
        subtitle: "스탠바이미 27ART10AKPL (스탠)",
        image: product1Img,
        details: [
          "화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.",
          "스탠바이미는 사랑입니다!️",
        ],
        rank: 1,
        rating: 4.89,
        noOfRate: 216,
        tags: [
          "LG전자",
          "편리성",
        ]
    ),
    ProductModel(
        title: "LG전자  ",
        subtitle: "울트라HD 75UP8300KNA (스탠드)",
        image: product2Img,
        details: [
          "화면 잘 나오고... 리모컨 기능 좋습니다.",
          "넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!",
        ],
        rank: 2,
        rating: 4.36,
        noOfRate: 136,
        tags: [
          "LG전자",
          "고화질",
        ]
    ),
    ProductModel(
        title: "라익미  ",
        subtitle: "스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)",
        image: product2Img,
        details: [
          "반응속도 및 화질이나 여러면에서도 부족함을 느끼기에는 커녕 이정도에 이 정도 성능이면 차고 넘칠만 합니다",
          "중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어 OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고",
        ],
        rank: 3,
        rating: 3.98,
        noOfRate: 98,
        tags: [
          "라익미",
          "가성비",
        ]
    ),
  ];

  final List<TopRankModel> topRanks = [
    TopRankModel(
      name: "Name01",
      profilePic: user1Img,
    ),
    TopRankModel(
      name: "Name02",
      profilePic: user2Img,
    ),
    TopRankModel(
      name: "Name03",
      profilePic: user3Img,
    ),
    TopRankModel(
      name: "Name04",
      profilePic: user4Img,
    ),
    TopRankModel(
      name: "Name05",
      profilePic: user5Img,
    ),
    TopRankModel(
      name: "Name06",
      profilePic: user6Img,
    ),
    TopRankModel(
      name: "Name07",
      profilePic: user7Img,
    ),
    TopRankModel(
      name: "Name08",
      profilePic: user8Img,
    ),
    TopRankModel(
      name: "Name09",
      profilePic: user9Img,
    ),
    TopRankModel(
      name: "Name10",
      profilePic: user10Img,
    ),
  ];
}