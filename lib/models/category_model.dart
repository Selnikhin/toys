import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';


class Category extends Equatable {
  final String name;
  final String imageUrl;

   const Category ({
    required this.name,
    required this.imageUrl,

  });

  @override
  List<Object?> get props => [name, imageUrl];

  static Category fromSnapshot (DocumentSnapshot snap){ //плучение данных из firebase
    Category category = Category(name: snap ['name'], imageUrl: snap ['image']);
    return category;

  }

    static List<Category> categories = [
    Category(
        name: 'Вязанные игрушки',
        imageUrl: "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80"),
    Category(
        name: 'Вязанные сумки',
        imageUrl: 'assets/images/bags/red_bag/red_bag 1.png'),
    Category(
        name: 'Трикотаж',
        imageUrl: 'assets/images/tricotage/korzina-karmashek-na-stul-seryj-1.jpeg'),
    Category(
        name: 'Подарочные наборы',
        imageUrl: 'assets/images/podarok/Boys_1/podarochnyj-nabor-dlya-malchika-plyushevyj-medved-1-1.jpeg'),

  ];
}
