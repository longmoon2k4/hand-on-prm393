//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//

class Product {
  final int id;
  final String name;
  final double price;

  Product({
    required this.id, required this.name, required this.price
  });

  @override
  String toString() {
    return 'Vật phẩm có ID: $id | $name | $price';
  }
}