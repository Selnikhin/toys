import 'package:equatable/equatable.dart';

class Categories extends Equatable {
  final String name;
  final String image;

   const Categories ({
    required this.name,
    required this.image,

  });

  @override
  List<Object?> get props => [name, image];

    static List<Categories> categoriesProd = [
    Categories(
        name: 'Вязанные игрушки',
        image: 'assets/images/toys/blue_bear/blue_bear 0.png'),
    Categories(
        name: 'Вязанные сумки',
        image: 'assets/images/bags/red_bag/red_bag 1.png'),
    Categories(
        name: "Трикотаж",
        image: 'assets/images/tricotage/korzina-karmashek-na-stul-seryj-1.jpeg'),
    Categories(
        name: "Подарочные наборы",
        image: 'assets/images/podarok/Boys_1/podarochnyj-nabor-dlya-malchika-plyushevyj-medved-1-1.jpeg'),

  ];
}
