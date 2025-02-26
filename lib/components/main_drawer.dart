import 'package:flutter/material.dart';
import '../utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  Widget _createItem(IconData icon, String label, Function() onTap) {
    return ListTile(
      leading: Icon(icon, size: 28, color: Colors.pink),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey[600]),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Adicionando SafeArea para evitar que fique muito colado ao topo
          SafeArea(
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.pinkAccent, Colors.pink],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30), // Adicionando mais espaçamento vertical
              child: Text(
                'Vamos Cozinhar?',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          _createItem(Icons.restaurant, 'Refeições', () {
            Navigator.of(context).pop();
            Navigator.of(context).pushReplacementNamed(AppRoutes.HOME);
          }),
          _createItem(Icons.settings, 'Configurações', () {
            Navigator.of(context).pop();
            Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS);
          }),
        ],
      ),
    );
  }
}
