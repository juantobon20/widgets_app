import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_item.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {

  static const String name = "HomeScreen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
      drawer: SideMenu(
        scaffoldKey: scaffoldKey,
      )
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder:(context, index) {
        final MenuItem menuItem = appMenuItems[index];
        return _CustomListTitle(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: color.primary,),
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: color.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        context.push(menuItem.link);
        //context.pushNamed(menuItem.link);
      },
    );
  }
}

