import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t3/config/theme/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widgets en Flutter')),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Nos traemos la lista de las rutas

    // El builder es una funcion que nos crea la lista automaticamente
    // gracias a un iterador
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: ((context, index) {
        final MenuItem item = appMenuItems[index];
        final colors = Theme.of(context).colorScheme;
        // Esto podríamos extraerlo a un widget personalizado

        return ListTile(
          title: Text(item.title),
          leading: Icon(item.icon, color: colors.primary),
          subtitle: Text(item.subTitle),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: colors.primary,
          ),
          onTap: () {
            context.push(item.link);
          },
        );
      }),
    );
  }
}