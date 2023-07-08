import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/menuapp_controller.dart';
import 'drawer_session/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuAppController = Provider.of<MenuAppController>(context);
    return Scaffold(
      key: menuAppController.scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
          child: Container(
            color: Colors.blue,
          )
      ),
    );
  }
}
