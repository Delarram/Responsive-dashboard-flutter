import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/screens/dashboard_screen/header.dart';

import '../../const/colors.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          primary: false,
          padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Header(),
SizedBox(height: defaultPadding,),
          Row(
            children: [

            ],
          )
        ],
      ),
    ));
  }
}
