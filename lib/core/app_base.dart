import 'package:flutter/material.dart';
import 'package:navegacao/core/routes_config.dart';
import 'app_base_controller.dart';

class DestinationItem {
  const DestinationItem(this.label, this.icon, this.selectedIcon);
  final String label;
  final Widget icon;
  final Widget selectedIcon;
}

const List<DestinationItem> destinations = <DestinationItem>[
  DestinationItem('Home', Icon(Icons.home_outlined), Icon(Icons.home)),
  DestinationItem('Produtos', Icon(Icons.store_outlined), Icon(Icons.store)),
  DestinationItem('Carrinho', Icon(Icons.shopping_cart_outlined),
      Icon(Icons.shopping_cart)),
  DestinationItem(
      'Favoritos', Icon(Icons.favorite_outline), Icon(Icons.favorite)),
];

class AppBase extends StatefulWidget {
  const AppBase({super.key});

  @override
  State<AppBase> createState() => _AppBaseState();
}

class _AppBaseState extends State<AppBase> {
  final _controller = AppBaseController();

  @override
  void initState() {
    super.initState();
  }

  void handleScreenChanged(int selectedScreen) {
    setState(() {
      _controller.currentTab = selectedScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      drawer: NavigationDrawer(
        onDestinationSelected: handleScreenChanged,
        selectedIndex: _controller.currentTab,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 16, 16, 10),
            child: Text(
              'Header',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ...destinations.map(
            (DestinationItem destination) {
              return NavigationDrawerDestination(
                label: Text(destination.label),
                icon: destination.icon,
                selectedIcon: destination.selectedIcon,
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
        ],
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _controller.currentTab,
          children: tabs,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _controller.currentTab,
        onDestinationSelected: (int index) {
          setState(() {
            _controller.currentTab = index;
          });
        },
        destinations: destinations.map(
          (DestinationItem destination) {
            return NavigationDestination(
              label: destination.label,
              icon: destination.icon,
              selectedIcon: destination.selectedIcon,
              tooltip: destination.label,
            );
          },
        ).toList(),
      ),
    );
  }
}
