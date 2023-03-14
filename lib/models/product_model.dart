import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final num price;
  final String category;
  final bool isPopular;
  final String images;
  final List<String> listImagesPr;
  final String description;
  final String parameters;

  Product({
    required this.name,
    required this.price,
    required this.images,
    required this.category,
    required this.isPopular,
    required this.listImagesPr,
    required this.description,
    required this.parameters,
  });

  @override
  List<Object?> get props =>
      [name, price, images, category, isPopular, listImagesPr,description,parameters];

  static List<Product> products = [
    Product(
        category: 'Вязанные игрушки',
        isPopular: true,
        name: 'Бежевый мишка',
        price: 3000,
        images: 'assets/images/toys/beige_bear/beige_bear 0.png',
        listImagesPr: [
          'assets/images/toys/beige_bear/beige_bear 0.png',
          'assets/images/toys/beige_bear/beige_bear 1.png',
          'assets/images/toys/beige_bear/beige_bear 2.png',
        ],
        description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
            ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
            ' Вязаный мишка выполнен в ручную и декорирован розовым бантиком. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
            ' Так же милый плюшевый мишка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
        parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,красный',
    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Мишка в синем',
      price: 3500,
      images: 'assets/images/toys/blue_bear/blue_bear 0.png',
      listImagesPr: const [
        'assets/images/toys/blue_bear/blue_bear 0.png',
        'assets/images/toys/blue_bear/blue_bear 1.png',
        'assets/images/toys/blue_bear/blue_bear 2.png',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован  синим комбезом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,синий',
    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: false,
      name: 'Коричневый мишка',
      price: 2000,
      images: 'assets/images/toys/brown_bear/brown_bear 0.png',
      listImagesPr: [
        'assets/images/toys/brown_bear/brown_bear 0.png',
        'assets/images/toys/brown_bear/brown_bear 1.png',
        'assets/images/toys/brown_bear/brown_bear 2.png',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован бантом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        коричневый,красный',
    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Серый зайка',
      price: 3000,
      images: 'assets/images/toys/grey_rabbit/grey_rabbit 0.png',
      listImagesPr: [
        'assets/images/toys/grey_rabbit/grey_rabbit 0.png',
        'assets/images/toys/grey_rabbit/grey_rabbit 1.png',
        'assets/images/toys/grey_rabbit/grey_rabbit 2.png',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован зеленым платицем. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        сервый,зеленый',
    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Мишка в платице',
      price: 3500,
      images: 'assets/images/toys/pink_bear/pink_bear 0.png',
      listImagesPr: [
        'assets/images/toys/pink_bear/pink_bear 0.png',
        'assets/images/toys/pink_bear/pink_bear 1.png',
        'assets/images/toys/pink_bear/pink_bear 2.png',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован  розовым платицем. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,розовый',
    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Зайка и Мишка',
      price: 3500,
      images: 'assets/images/toys/rabbit_and_bear/rabbit_and_bear 0.png',
      listImagesPr: [
        'assets/images/toys/rabbit_and_bear/rabbit_and_bear 0.png',
        'assets/images/toys/rabbit_and_bear/rabbit_and_bear 1.png',
      ],
      description:  'Вязаный плюшевый мишка и зайка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован красивыми одежками. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,серый',
    ),
    Product(
      category: 'Вязанные игрушки',
      isPopular: true,
      name: 'Желтый мишка',
      price: 2000,
      images: 'assets/images/toys/yellow_bear/yellow_bear 0.png',
      listImagesPr: [
        'assets/images/toys/yellow_bear/yellow_bear 0.png',
        'assets/images/toys/yellow_bear/yellow_bear 1.png',
        'assets/images/toys/yellow_bear/yellow_bear 2.png',
        ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован бантом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        желтый,синий',
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Голубая сумка',
      price: 4500,
      images: 'assets/images/bags/blue_bag/blue_bag 0.png',
      listImagesPr: [
        'assets/images/bags/blue_bag/blue_bag 0.png',
        'assets/images/bags/blue_bag/blue_bag 1.png',
        'assets/images/bags/blue_bag/blue_bag 2.png',
      ],
      description:  'Вязаная женская сумка ручной работы станет модным аксессуаром. Сумка выполнена из трикотажной пряжи высокого качества. '
          'Вязаная сумка имеет стильную фурнитуру.',
      parameters:
      'Страна-изготовитель          Россия'
          'Материал          Трикотаж  ',
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Синий клатч',
      price: 3000,
      images: 'assets/images/bags/blue_clutch/blue_clutch 0.png',
      listImagesPr: [
        'assets/images/bags/blue_clutch/blue_clutch 0.png',
        'assets/images/bags/blue_clutch/blue_clutch 1.png',
        'assets/images/bags/blue_clutch/blue_clutch 2.png',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован  синим комбезом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,синий',
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Бежевая сумка',
      price: 4000,
      images: 'assets/images/bags/brown_bag/brown_bag 0.png',
      listImagesPr: [
        'assets/images/bags/brown_bag/brown_bag 0.png',
        'assets/images/bags/brown_bag/brown_bag 1.png',
        'assets/images/bags/brown_bag/brown_bag 2.png',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован  синим комбезом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,синий',
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Красная сумка',
      price: 4500,
      images: 'assets/images/bags/red_bag/red_bag 0.png',
      listImagesPr: [
        'assets/images/bags/red_bag/red_bag 0.png',
        'assets/images/bags/red_bag/red_bag 1.png',
        'assets/images/bags/red_bag/red_bag 2.png',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован  синим комбезом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,синий',
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Круглая сумка',
      price: 3500,
      images: 'assets/images/bags/circular_bag/circular_bag 0.png',
      listImagesPr: [
        'assets/images/bags/circular_bag/circular_bag 0.png',
        'assets/images/bags/circular_bag/circular_bag 1.png',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован  синим комбезом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,синий',
    ),
    Product(
      category: 'Вязанные сумки',
      isPopular: true,
      name: 'Рюкзак',
      price: 3500,
      images: 'assets/images/bags/backpack/backpack 0.png',
      listImagesPr: [
        'assets/images/bags/backpack/backpack 0.png',
        'assets/images/bags/backpack/backpack 1.png',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован  синим комбезом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,синий',
    ),
    Product(
      category: 'Подарочные наборы',
      isPopular: true,
      name: 'Набор для мальчика N1',
      price: 1490,
      images:
          'assets/images/podarok/Boys_1/podarochnyj-nabor-dlya-malchika-plyushevyj-medved 0.jpeg',
      listImagesPr: [
        'assets/images/podarok/Boys_1/podarochnyj-nabor-dlya-malchika-plyushevyj-medved 0.jpeg',
        'assets/images/podarok/Boys_1/podarochnyj-nabor-dlya-malchika-plyushevyj-medved 1.jpeg',
        'assets/images/podarok/Boys_1/podarochnyj-nabor-dlya-malchika-plyushevyj-medved 2.jpeg',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован  синим комбезом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,синий',
    ),
    Product(
      category: 'Подарочные наборы',
      isPopular: true,
      name: 'Набор для мальчика N2',
      price: 1490,
      images: 'assets/images/podarok/Boys_2/photo_0.jpeg',
      listImagesPr: [
        'assets/images/podarok/Boys_2/photo_0.jpeg',
        'assets/images/podarok/Boys_2/photo_1.jpeg',
        'assets/images/podarok/Boys_2/photo_2.jpeg',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован  синим комбезом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,синий',
    ),
    Product(
      category: 'Подарочные наборы',
      isPopular: true,
      name: 'Набор для девочки N1',
      price: 1490,
      images:
          'assets/images/podarok/Girls_1/podarochnyj-nabor-dlya-devochki-plyusheyj-mishka 0.jpeg',
      listImagesPr: [
        'assets/images/podarok/Girls_1/podarochnyj-nabor-dlya-devochki-plyusheyj-mishka 0.jpeg',
        'assets/images/podarok/Girls_1/podarochnyj-nabor-dlya-devochki-plyusheyj-mishka 1.jpeg',
        'assets/images/podarok/Girls_1/podarochnyj-nabor-dlya-devochki-plyusheyj-mishka 2.jpeg',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован  синим комбезом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,синий',
    ),
    Product(
      category: 'Подарочные наборы',
      isPopular: true,
      name: 'Набор для девочки N2',
      price: 1490,
      images:
          'assets/images/podarok/Girls_2/podarochnyj-nabor-dlya-devochki-plyusheyj-medved 0.jpeg',
      listImagesPr: [
        'assets/images/podarok/Girls_2/podarochnyj-nabor-dlya-devochki-plyusheyj-medved 0.jpeg',
        'assets/images/podarok/Girls_2/podarochnyj-nabor-dlya-devochki-plyusheyj-medved 1.jpeg',
        'assets/images/podarok/Girls_2/podarochnyj-nabor-dlya-devochki-plyusheyj-medved 2.jpeg',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован  синим комбезом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,синий',
    ),
    Product(
      category: 'Трикотаж',
      isPopular: true,
      name: 'Корзина розовая',
      price: 1250,
      images:
      'assets/images/tricotage/korzina_pink/korzina-karmashek-na-stul-rozovyj-0.jpg',
      listImagesPr: [
        'assets/images/tricotage/korzina_pink/korzina-karmashek-na-stul-rozovyj-0.jpg',
        'assets/images/tricotage/korzina_pink/korzina-karmashek-na-stul-rozovyj-1.jpg',
        'assets/images/tricotage/korzina_pink/korzina-karmashek-na-stul-rozovyj-2.jpg',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован  синим комбезом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,синий',
    ),
    Product(
      category: 'Трикотаж',
      isPopular: true,
      name: 'Корзина белая',
      price: 1250,
      images:
      'assets/images/tricotage/korzina_white/korzina-karmashek-na-stul-seryj-0.jpeg',
      listImagesPr: [
        'assets/images/tricotage/korzina_white/korzina-karmashek-na-stul-seryj-0.jpeg',
        'assets/images/tricotage/korzina_white/korzina-karmashek-na-stul-seryj-1.jpeg',
        'assets/images/tricotage/korzina_white/korzina-karmashek-na-stul-seryj-2.jpeg',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован  синим комбезом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,синий',
    ),
    Product(
      category: 'Трикотаж',
      isPopular: true,
      name: 'Люлька',
      price: 1250,
      images:
      'assets/images/tricotage/lulka/lyulka-dlya-igrushki-0.jpg',
      listImagesPr: [
        'assets/images/tricotage/lulka/lyulka-dlya-igrushki-0.jpg',
        'assets/images/tricotage/lulka/lyulka-dlya-igrushki-1.jpg',
        'assets/images/tricotage/lulka/lyulka-dlya-igrushki-2.jpg',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован  синим комбезом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,синий',
    ),
    Product(
      category: 'Трикотаж',
      isPopular: true,
      name: 'Ракушка',
      price: 1450,
      images:
      'assets/images/tricotage/racuska/korzina-vyazanaya-rakushka-0.jpg',
      listImagesPr: [
        'assets/images/tricotage/racuska/korzina-vyazanaya-rakushka-0.jpg',
        'assets/images/tricotage/racuska/korzina-vyazanaya-rakushka-1.jpg',
        'assets/images/tricotage/racuska/korzina-vyazanaya-rakushka-2.jpg',
      ],
      description:  'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
          ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
          ' Вязаный мишка выполнен в ручную и декорирован  синим комбезом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
          ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
      parameters: 'Высота            40см \n ширина          30см \n Цвета        Бежевый,синий',
    ),
  ];
}

