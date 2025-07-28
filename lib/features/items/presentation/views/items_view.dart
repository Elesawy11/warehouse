import 'package:flutter/material.dart';
import 'package:warehouse_app/core/utils/assets.dart';
import 'widgets/item_card_widget.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Items',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black54),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.sort, color: Colors.black54),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black54),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: ItemData.items.length,
        itemBuilder: (context, index) {
          final item = ItemData.items[index];
          return ItemCardWidget(item: item);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF4285F4),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

class Item {
  final String name;
  final String sku;
  final String cost;
  final String price;
  final int quantity;
  final String imagePath;

  Item({
    required this.name,
    required this.sku,
    required this.cost,
    required this.price,
    required this.quantity,
    required this.imagePath,
  });
}

class ItemData {
  static List<Item> items = [
    Item(
      name: 'Microsoft Surface 4',
      sku: 'UEPYMGDO',
      cost: '1000 USD',
      price: '1400 USD',
      quantity: 80,
      imagePath: Assets.imagesLaptop,
    ),
    Item(
      name: 'Acer Nitro 5',
      sku: 'OMCZHYYIX',
      cost: '1200 USD',
      price: '1500 USD',
      quantity: 75,
      imagePath: Assets.imagesLaptop,
    ),
    Item(
      name: 'Hp monoblock 12',
      sku: 'IQHPVMSD',
      cost: '650 USD',
      price: '800 USD',
      quantity: 15,
      imagePath: Assets.imagesLaptop,
    ),
    Item(
      name: 'Apple MacBook Pro 14',
      sku: 'SMXAPGAID',
      cost: '1800 USD',
      price: '2500 USD',
      quantity: 45,
      imagePath: Assets.imagesLaptop,
    ),
    Item(
      name: 'Lenovo ThinkPad',
      sku: 'NNEUUUKXCL',
      cost: '950 USD',
      price: '1200 USD',
      quantity: 50,
      imagePath: Assets.imagesLaptop,
    ),
  ];
}
