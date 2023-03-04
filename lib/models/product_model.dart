import 'package:cloud_firestore/cloud_firestore.dart';
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
  static Product fromSnapshot (DocumentSnapshot snap){ //плучение данных из firebase
    Product product = Product(
      category: snap['category'],
      name: snap ['name'],
      images: snap ['images'],
        isPopular: snap ['isPopular'],
        price: snap['price']
    );
    return product; //?
  }

  @override
   List<Object?> get props => [name, price, images, category, isPopular];

   static List<Product> products =[
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Бежевый мишка',
      price: 3000,
      images:
      'assets/images/toys/beige_bear/beige_bear 0.png',

    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Мишка в синем',
      price: 3500,
      images:
      'assets/images/toys/blue_bear/blue_bear 0.png',

    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: false,
      name: 'Коричневый мишка',
      price: 2000,
      images:
      'assets/images/toys/brown_bear/brown_bear 0.png',

    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Серый зайка',
      price: 3000,
      images:
      'assets/images/toys/grey_rabbit/grey_rabbit 0.png',

    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Мишка в платье',
      price: 3500,
      images:
      'assets/images/toys/pink_bear/pink_bear 0.png',

    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Зайка и Мишка',
      price: 3500,
      images:
      'assets/images/toys/rabbit_and_bear/rabbit_and_bear 0.png',

    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Желтый мишка',
      price: 2000,
      images:
      'assets/images/toys/yellow_bear/yellow_bear 0.png',

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
     Product(
       category: 'Подарочные наборы',
       isPopular: true,
       name: 'Набор для мальчика N1',
       price: 1490,
       images:
       'assets/images/podarok/Boys_1/podarochnyj-nabor-dlya-malchika-plyushevyj-medved-1-1.jpeg',
     ),
     Product(
       category: 'Подарочные наборы',
       isPopular: true,
       name: 'Набор для мальчика N2',
       price: 1490,
       images:
       'assets/images/podarok/Boys_2/photo_2021-10-19_21-49-00.jpeg',
     ),
     Product(
       category: 'Подарочные наборы',
       isPopular: true,
       name: 'Набор для девочки N1',
       price: 1490,
       images:
       'assets/images/podarok/Girls_1/podarochnyj-nabor-dlya-devochki-plyusheyj-mishka-1.jpeg',
     ),
     Product(
       category: 'Подарочные наборы',
       isPopular: true,
       name: 'Набор для девочки N2',
       price: 1490,
       images:
       'assets/images/podarok/Girls_2/podarochnyj-nabor-dlya-devochki-plyusheyj-medved-1.jpeg',
     ),
  ];

}

