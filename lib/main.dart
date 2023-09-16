
import 'package:flutter/material.dart';

void main(){
  runApp(Myapps());
}
class Myapps extends StatelessWidget {
  const Myapps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),

    );
  }
}

class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon:Icon( Icons.shopping_cart),)
        ],
      ),

      body: ShoppingList(),



    );
  }
}

class ShoppingList extends StatelessWidget {
  final List<ShoppingItem> items = [
    ShoppingItem(icon: Icons.add_card, name: 'Apples'),
    ShoppingItem(icon: Icons.add_card, name: 'Mango'),
    ShoppingItem(icon: Icons.add_card, name: 'Banana'),
    ShoppingItem(icon: Icons.add_card, name: 'Cherry'),
    ShoppingItem(icon: Icons.add_card, name: 'Avocado'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(items[index].icon),
          title: Text(items[index].name),
          onTap: () {
            // Add item tap functionality here
          },
        );
      },
    );
  }
}

class ShoppingItem {
  final IconData icon;
  final String name;

  ShoppingItem({required this.icon, required this.name});
}
