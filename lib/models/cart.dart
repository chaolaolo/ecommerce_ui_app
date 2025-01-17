import 'package:ecommerce_ui_app/models/product.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  //list of prod for sale
  List<Product> productShop = [
    Product(
      name: "Samba OG shoes",
      price: 2700000,
      imagePath: "lib/images/shoes1.png",
      description:
          "Tận hưởng phong cách và cảm giác thoải mái đặc trưng với đôi giày adidas Samba OG này. Vốn là một mẫu giày trainer bóng đá trong nhà ra đời vào thập niên 1950, dòng giày Samba đã trở thành một item streetwear không thể thiếu. Phiên bản preppy này có thân giày bằng da và da lộn với các phối màu sinh viên classic. Logo dập chìm ở hai bên và các chi tiết màu vàng gold trên lưỡi gà tôn vinh bề dày di sản của dòng giày này. Bất kể đi chơi tối hay dạo bước quanh khu phố, đôi giày thường ngày này sẽ mang đến cho bạn phong cách casual mà cực cool.",
    ),
    Product(
      name: "SL 72 RS",
      price: 2400000,
      imagePath: "lib/images/shoes2.png",
      description:
          "Tận hưởng phong cách và cảm giác thoải mái đặc trưng với đôi giày adidas Samba OG này. Vốn là một mẫu giày trainer bóng đá trong nhà ra đời vào thập niên 1950, dòng giày Samba đã trở thành một item streetwear không thể thiếu. ",
    ),
    Product(
      name: "Trainer Dropset 2",
      price: 2800000,
      imagePath: "lib/images/shoes3.png",
      description:
          "Cảm giác của thanh tạ đòn trên tay, âm thanh các đĩa tạ va vào nhau, tiếng chuông báo hiệu kỷ lục mới đạt được. Chẳng gì sánh bằng một buổi nâng tạ thành công, và đôi giày tập luyện adidas này mang đến cho bạn phong độ vượt trội trong các buổi tập rèn luyện sức mạnh. ",
    ),
    Product(
      name: "Track Pant Firebird",
      price: 2300000,
      imagePath: "lib/images/clothes1.png",
      description: "Biểu tượng một thời nay được cải biên đầy hiện đại với sắc màu mới mẻ. Chiếc quần track pant adidas Adicolor Firebird này gợi nhớ kho di sản nhưng vẫn đảm bảo phong cách hiện đại. Kiểu dáng regular fit, cạp chun có dây rút và chất vải piqué mềm mại đảm bảo cảm giác thoải mái suốt ngày dài.",
    ),
    Product(
      name: "Classics Adicolor",
      price: 950.000,
      imagePath: "lib/images/clothes2.png",
      description:
          "Cùng chào đón chiếc áo thun yêu thích mới của bạn. Chiếc áo thun adidas classic này có dáng ôm và viền áo tương phản đậm chất vintage tinh tế. Kết hợp chiếc áo này với chiếc quần denim tối màu ưa thích, bạn sẽ dễ dàng có được một outfit classic. Áo làm từ chất vải cotton siêu mềm mại giúp bạn luôn thoải mái.",
    ),
    Product(
      name: "Slim Raglan 3 Sọc Adicolor",
      price: 950.000,
      imagePath: "lib/images/clothes3.png",
      description: "Chiếc áo thun adidas này cải biên một item must-have hàng ngày với kiểu dáng ôm sát cơ thể và chất liệu co giãn nhẹ tăng cường thoải mái. Tay áo raglan màu tương phản và logo Ba Lá mang hơi hướng retro, cùng 3 Sọc trên vai áo mang đậm dấu ấn di sản thể thao.",
    ),
    Product(
      name: "TR CREW S 6P",
      price: 600.000,
      imagePath: "lib/images/accessory1.png",
      description: "description",
    ),
    Product(
      name: "Airliner Mini Classic Adicolor",
      price: 800.000,
      imagePath: "lib/images/accessory2.png",
      description: "Phong cách kinh điển kết hợp hiệu năng hiện đại làm nên chiếc túi adidas này. Sắp xếp gọn gàng và giữ các vật dụng thiết yếu hàng ngày ngay trong tầm tay, bất kể bạn chỉ ra đường chốc lát hay di chuyển nhiều giờ. ",
    ),
    Product(
      name: "Adidas Hat blue",
      price: 600.000,
      imagePath: "lib/images/accessory3.png",
      description: "Bất kể bạn chuẩn bị ra đường chạy việc vặt hay lên đường phiêu lưu, chiếc mũ lưỡi trai adidas này sẽ đồng hành cùng bạn. Điều chỉnh quai mũ phía sau cho độ ôm vừa ý và cảm giác thoải mái suốt cả ngày. Là một item thường ngày must-have, chiếc mũ này mang đến phong cách cho mọi outfit.",
    ),
  ];

  //list of items in user cart
  List<Product> userCart = [];

//get list of product for sale
  List<Product> getProductList() {
    return productShop;
  }

  //get cart
  List<Product> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Product product) {
    userCart.add(product);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Product product) {
    userCart.remove(product);
    notifyListeners();
  }
}
