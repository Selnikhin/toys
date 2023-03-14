import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String image;

   const Category ({
    required this.name,
    required this.image,

  });

  @override
  List<Object?> get props => [name, image];

    static List<Category> categoriesProd = [
    Category(
        name: 'Вязанные игрушки',
        image: 'assets/images/toys/blue_bear/blue_bear 0.png'),
    Category(
        name: 'Вязанные сумки',
        image: 'assets/images/bags/red_bag/red_bag 0.png'),
    Category(
        name: "Трикотаж",
        image: 'assets/images/tricotage/korzina_pink/korzina-karmashek-na-stul-rozovyj-0.jpg'),
    Category(
        name: "Подарочные наборы",
        image: 'assets/images/podarok/Boys_1/podarochnyj-nabor-dlya-malchika-plyushevyj-medved 0.jpeg'),

  ];
}
