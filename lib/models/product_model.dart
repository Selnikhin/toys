import 'dart:ui';

import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final num price;
  final String category;
  final bool isPopular;
  final String images;
  final List<String> imagesProducov;

  Product({
    required this.name,
    required this.price,
    required this.images,
    required this.category,
    required this.isPopular,
    required this.imagesProducov,
  });

  @override
  List<Object?> get props =>
      [name, price, images, category, isPopular, imagesProducov];

  static List<Product> products = [
    Product(
        category: 'Вязанные игрушки',
        isPopular: true,
        name: 'Бежевый мишка',
        price: 3000,
        images: 'assets/images/toys/beige_bear/beige_bear 0.png',
        imagesProducov: [
          'assets/images/toys/beige_bear/beige_bear 0.png',
          'assets/images/toys/beige_bear/beige_bear 1.png',
          'assets/images/toys/beige_bear/beige_bear 2.png',
        ]),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Мишка в комбезе',
      price: 3500,
      images: 'assets/images/toys/blue_bear/blue_bear 0.png',
      imagesProducov: const [
        'assets/images/toys/blue_bear/blue_bear 0.png',
        'assets/images/toys/blue_bear/blue_bear 1.png',
        'assets/images/toys/blue_bear/blue_bear 2.png',
      ],
    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: false,
      name: 'Коричневый мишка',
      price: 2000,
      images: 'assets/images/toys/brown_bear/brown_bear 0.png',
      imagesProducov: [],
    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Серый зайка',
      price: 3000,
      images: 'assets/images/toys/grey_rabbit/grey_rabbit 0.png',
      imagesProducov: [],
    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Мишка в платице',
      price: 3500,
      images: 'assets/images/toys/pink_bear/pink_bear 0.png',
      imagesProducov: [],
    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Зайка и Мишка',
      price: 3500,
      images: 'assets/images/toys/rabbit_and_bear/rabbit_and_bear 0.png',
      imagesProducov: [],
    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Желтый мишка',
      price: 2000,
      images: 'assets/images/toys/yellow_bear/yellow_bear 0.png',
      imagesProducov: [],
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Голубая сумка',
      price: 4500,
      images: 'assets/images/bags/blue_bag/blue_bag 0.png',
      imagesProducov: [],
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Синий клатч',
      price: 3000,
      images: 'assets/images/bags/blue_clutch/blue_clutch 0.png',
      imagesProducov: [],
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Бежевая сумка',
      price: 4000,
      images: 'assets/images/bags/brown_bag/brown_bag 0.png',
      imagesProducov: [],
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Красная сумка',
      price: 4500,
      images: 'assets/images/bags/red_bag/red_bag 1.png',
      imagesProducov: [],
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Круглая сумка',
      price: 3500,
      images: 'assets/images/bags/circular_bag/circular_bag 0.png',
      imagesProducov: [],
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Рюкзак',
      price: 3500,
      images: 'assets/images/bags/backpack/backpack 0.png',
      imagesProducov: [],
    ),
    Product(
      category: 'Подарочные наборы',
      isPopular: true,
      name: 'Набор для мальчика N1',
      price: 1490,
      images:
          'assets/images/podarok/Boys_1/podarochnyj-nabor-dlya-malchika-plyushevyj-medved-1-1.jpeg',
      imagesProducov: [],
    ),
    Product(
      category: 'Подарочные наборы',
      isPopular: true,
      name: 'Набор для мальчика N2',
      price: 1490,
      images: 'assets/images/podarok/Boys_2/photo_2021-10-19_21-49-00.jpeg',
      imagesProducov: [],
    ),
    Product(
      category: 'Подарочные наборы',
      isPopular: true,
      name: 'Набор для девочки N1',
      price: 1490,
      images:
          'assets/images/podarok/Girls_1/podarochnyj-nabor-dlya-devochki-plyusheyj-mishka-1.jpeg',
      imagesProducov: [],
    ),
    Product(
      category: 'Подарочные наборы',
      isPopular: true,
      name: 'Набор для девочки N2',
      price: 1490,
      images:
          'assets/images/podarok/Girls_2/podarochnyj-nabor-dlya-devochki-plyusheyj-medved-1.jpeg',
      imagesProducov: [],
    ),
  ];
}

final List<String> imagesProducov2 = [
  'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
  'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
  'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
  'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
  'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
];

final List<String> imagesProducov3 = [
  'assets/images/toys/blue_bear/blue_bear 0.png',
  'assets/images/toys/blue_bear/blue_bear 1.png',
  'assets/images/toys/blue_bear/blue_bear 2.png',
];
