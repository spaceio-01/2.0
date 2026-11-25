import 'package:flutter/material.dart';
import 'product_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShopScreen(),
    );
  }
}

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  final List<Product> products = const [
    Product(
      title: 'Наушники',
      category: 'Беспроводные',
      price: '3 500 сом',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtPO7sP3kroSrMILqLxFfPE4DfvIXWuRmhJXkiJb5ikw&s=10',
    ),
    Product(
      title: 'Смарт-часы',
      category: 'Электроника',
      price: '5 900 сом',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrhNfJL88SES6etEIJDRXbtCvvkzaH-MvasRrX8qvaCw&s=10',
    ),
    Product(
      title: 'Ноутбук',
      category: 'Компьютеры',
      price: '65 000 сом',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRBCDC6pX1o30r6jABwVt7OmnnaviiGwkzeK49QdMoBQ&s=10',
    ),
    Product(
      title: 'Фотоаппарат',
      category: 'Фото и видео',
      price: '42 000 сом',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZuOuseEgRrIjHzhVvlci4VPxR5VQt2gLVhkEQMAHEsA&s=10',
    ),
    Product(
      title: 'Клавиатура',
      category: 'Периферия',
      price: '3 200 сом',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmQ_tQNl0muhi4vpsTyvQhI2WOn_Ap-gn664VTzEAC_A&s,'
    ),
    Product(
      title: 'Смартфон',
      category: 'Телефоны',
      price: '32 000 сом',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSrcZWPtz90GubSUiVJC05F2jb7oQq5vClO7k_Yu3S2Q&s=10',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9F9F9),
        elevation: 0,
        title: const Text(
          'Магазин',
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 28,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 4, bottom: 16),
              child: Text(
                'Каталог товаров',
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: 0.68,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(product: products[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
