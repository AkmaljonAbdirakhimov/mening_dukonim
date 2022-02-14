import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/orders_screen.dart';
import '../screens/manage_products_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: const Text('Salom Do\'stim!'),
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('Magazin'),
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(HomeScreen.routeName),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Buyurtmalar'),
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(OrdersScreen.routeName),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Mahsulotlarni Boshqarish'),
            onTap: () => Navigator.of(context)
                .pushReplacementNamed(ManageProductsScreen.routeName),
          ),
        ],
      ),
    );
  }
}
