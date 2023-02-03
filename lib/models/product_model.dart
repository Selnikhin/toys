class ProductModel {
  final String name;
  final double price;
  final List<String> images;
  ProductModel({
    required this.name,
    required this.price,
    required this.images,
  });
}

List<ProductModel> products = [
  ProductModel(name: 'Beige_bear', price: 100, images: [
    'beige_bear/beige_bear 0.png',
    'beige_bear/beige_bear 1.png',
    'beige_bear/beige_bear 2.png',
  ]),
  ProductModel(name: 'Blue_bear', price: 120, images: [
    'blue_bear/blue_bear 0.png',
    'blue_bear/blue_bear 1.png',
    'blue_bear/blue_bear 2.png',

  ]),
  ProductModel(name: 'Brown_bear', price: 225.00, images: [
    'brown_bear/brown_bear 0.png',
    'brown_bear/brown_bear 1.png',
    'brown_bear/brown_bear 2.png',
  ]),
  ProductModel(name: 'Grey_rabbit', price: 3447.46, images: [
    'grey_rabbit/grey_rabbit 0.png',
    'grey_rabbit/grey_rabbit 1.png',
    'grey_rabbit/grey_rabbit 2.png',

  ]),
  ProductModel(name: 'Pink_bear', price: 551.01, images: [
    'pink_bear/pink_bear 0.png',
    'pink_bear/pink_bear 1.png',
    'pink_bear/pink_bear 2.png',

  ]),
  ProductModel(name: 'Rabbit_and_Bear', price: 3447.46, images: [
    'rabbit_and_bear/rabbit_and_bear 0.png',
    'rabbit_and_bear/rabbit_and_bear 1.png',

  ]),
  ProductModel(name: 'Yellow_bear', price: 3447.46, images: [
    'yellow_bear/yellow_bear 0.png',
    'yellow_bear/yellow_bear 1.png',
    'yellow_bear/yellow_bear 2.png',
    'yellow_bear/yellow_bear 3.png',

  ]),
];