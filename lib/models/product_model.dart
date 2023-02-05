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
  ProductModel(name: 'Бежевый мишка', price: 3000, images: [
    'beige_bear/beige_bear 0.png',
    'beige_bear/beige_bear 1.png',
    'beige_bear/beige_bear 2.png',
  ]),
  ProductModel(name: 'Мишка в синем комбезе', price: 3500, images: [
    'blue_bear/blue_bear 0.png',
    'blue_bear/blue_bear 1.png',
    'blue_bear/blue_bear 2.png',

  ]),
  ProductModel(name: 'Коричневый мишка', price: 2000, images: [
    'brown_bear/brown_bear 0.png',
    'brown_bear/brown_bear 1.png',
    'brown_bear/brown_bear 2.png',
  ]),
  ProductModel(name: 'Серый зайка', price: 3000, images: [
    'grey_rabbit/grey_rabbit 0.png',
    'grey_rabbit/grey_rabbit 1.png',
    'grey_rabbit/grey_rabbit 2.png',

  ]),
  ProductModel(name: 'Мишка в розовом', price: 3500, images: [
    'pink_bear/pink_bear 0.png',
    'pink_bear/pink_bear 1.png',
    'pink_bear/pink_bear 2.png',

  ]),
  ProductModel(name: 'Зайка и Мишка', price: 3500, images: [
    'rabbit_and_bear/rabbit_and_bear 0.png',
    'rabbit_and_bear/rabbit_and_bear 1.png',

  ]),
  ProductModel(name: 'Желтенький Мишка', price: 2000, images: [
    'yellow_bear/yellow_bear 0.png',
    'yellow_bear/yellow_bear 1.png',
    'yellow_bear/yellow_bear 2.png',
    'yellow_bear/yellow_bear 3.png',

  ]),
  ProductModel(name: 'Голубая сумка', price: 4500, images: [
    'assets/images/bags/blue_bag/blue_bag 0.png',


  ]),
  ProductModel(name: 'Синий клатч', price: 3000, images: [
    'assets/images/bags/blue_bag/blue_clutch 0.png',


  ]),
  ProductModel(name: 'Бежевая сумка', price: 4000, images: [
    'assets/images/bags/blue_bag/blue_bag 0.png',


  ]),
  ProductModel(name: 'Красная сумка', price: 4500, images: [
    'assets/images/bags/blue_bag/red_bag 1.png',


  ]),
  ProductModel(name: 'Круглая сумка', price: 3500, images: [
    'assets/images/bags/blue_bag/circular_bag 0.png',


  ]),

];