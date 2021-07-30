import 'package:flutter/foundation.dart';

class PopularRow {
  const PopularRow({
    @required this.image,
    @required this.name,
    @required this.desc,
    @required this.coupon,
    @required this.ratingTimePrice,
  });

  final String image;
  final String name;
  final String desc;
  final String coupon;
  final String ratingTimePrice;

  static List<List<PopularRow>> getSpotlightRestaurants() {
    return const [
      [
        PopularRow(
          image: 'assets/images/1.jpg',
          name: 'PANPURI WELLNESS',
          desc:
              'แหล่งรวมบริการทรีตเม้นท์ ออนเซ็น และสปา สุดผ่อนคลายใจกลางกรุงเทพฯ',
          coupon: '20 \$ off | Use JUMBO',
          ratingTimePrice: '4.1 45 mins - Rs 200 for two',
        ),
        PopularRow(
          image: 'assets/images/2.jpg',
          name: 'CLARINS SKIN SPA',
          desc:
              'ความชำนาญที่คุณสัมผัสได้, ผลลัพธ์ที่คุณเห็นชัด ทุกทรีตเม้นต์ของเรามีความเป็นเอกลักษณ์',
          coupon: '20 \$ off | Use SWIGGYIT',
          ratingTimePrice: '4.1 35 mins - Rs 150 for two',
        ),
      ],
      [
        PopularRow(
          image: 'assets/images/3.jpg',
          name: 'SENSE, A ROSEWOOD SPA',
          desc:
              'สปาสุดหรูใจกลางเมืองเพลินจิต ตกแต่งสไตล์โมเดิร์น ทันสมัย เหมาะสำหรับสาวๆที่รักการผ่อนคลาย',
          coupon: '30 \$ off | Use A2BSUPER',
          ratingTimePrice: '4.2 32 mins - Rs 130 for two',
        ),
        PopularRow(
          image: 'assets/images/4.jpg',
          name: 'TREASURE SPA',
          desc:
              'Luxury Spa ในย่านสยามสแควร์ ใจกลางย่านช็อปปิ้งที่คึกคักที่สุดของกรุงเทพฯ',
          coupon: '20 \$ off | Use JUMBO',
          ratingTimePrice: '3.8 25 mins - Rs 200 for two',
        ),
      ],
      [
        PopularRow(
          image: 'assets/images/5.jpg',
          name: 'LET’S RELAX ONSEN THONGLOR',
          desc:
              'สปาชั้นนำในกรุงเทพฯ ที่พร้อมเสิร์ฟความรื่นรมย์แห่งการปรนนิบัติร่างกาย',
          coupon: '20 \$ off | Use SWIGGYIT',
          ratingTimePrice: '4.1 55 mins - Rs 100 for two',
        ),
        PopularRow(
          image: 'assets/images/6.jpg',
          name: 'LA ZENSA SPA',
          desc:
              'สปาชั้นนำในกรุงเทพฯ ที่พร้อมเสิร์ฟความรื่นรมย์แห่งการปรนนิบัติร่างกาย',
          coupon: '30 \$ off | Use JUMBO',
          ratingTimePrice: '4.3 22 mins - Rs 150 for two',
        ),
      ],
      [
        PopularRow(
          image: 'assets/images/7.jpg',
          name: 'BANGKOK SPA',
          desc:
              'สปาชั้นนำในกรุงเทพฯ ที่พร้อมเสิร์ฟความรื่นรมย์แห่งการปรนนิบัติร่างกาย',
          coupon: '20 \$ off | Use JUMBO',
          ratingTimePrice: '4.1 25 mins - Rs 120 for two',
        ),
        PopularRow(
          image: 'assets/images/8.jpg',
          name: 'OASIS SPA (SUKHUMVIT 31)',
          desc:
              'สปาชั้นนำในกรุงเทพฯ ที่พร้อมเสิร์ฟความรื่นรมย์แห่งการปรนนิบัติร่างกาย',
          coupon: '30 \$ off | Use JUMBO',
          ratingTimePrice: '4.3 42 mins - Rs 350 for two',
        ),
      ]
    ];
  }
}
