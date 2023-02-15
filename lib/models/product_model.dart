import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final num price;
  final String category;
  final bool isPopular;
  final String images;

   Product({
    required this.name,
    required this.price,
    required this.images,
    required this.category,
    required this.isPopular,
  });

  @override
   List<Object?> get props => [name, price, images, category, isPopular];

   static List<Product> products =[
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Бежевый мишка',
      price: 3000,
      images:
      'assets/images/beige_bear/beige_bear 0.png',

    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Мишка в комбезе',
      price: 3500,
      images:
      'assets/images/blue_bear/blue_bear 0.png',

    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: false,
      name: 'Коричневый мишка',
      price: 2000,
      images:
      'assets/images/brown_bear/brown_bear 0.png',

    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Серый зайка',
      price: 3000,
      images:
      'assets/images/grey_rabbit/grey_rabbit 0.png',

    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Мишка в платице',
      price: 3500,
      images:
      'assets/images/pink_bear/pink_bear 0.png',

    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Зайка и Мишка',
      price: 3500,
      images:
      'assets/images/rabbit_and_bear/rabbit_and_bear 0.png',

    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Желтый мишка',
      price: 2000,
      images:
      'assets/images/yellow_bear/yellow_bear 0.png',

    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Голубая сумка',
      price: 4500,
      images:
      'assets/images/bags/blue_bag/blue_bag 0.png',
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Синий клатч',
      price: 3000,
      images:
      'assets/images/bags/blue_clutch/blue_clutch 0.png',
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Бежевая сумка',
      price: 4000,
      images:
      'assets/images/bags/brown_bag/brown_bag 0.png',
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Красная сумка',
      price: 4500,
      images:
      'assets/images/bags/red_bag/red_bag 1.png',
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Круглая сумка',
      price: 3500,
      images:
      'assets/images/bags/circular_bag/circular_bag 0.png',
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Рюкзак',
      price: 3500,
      images:
      'assets/images/bags/backpack/backpack 0.png',
    ),
  ];

}

