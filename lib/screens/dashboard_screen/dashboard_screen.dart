import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/screens/dashboard_screen/header.dart';
import 'package:responsive_dashboard_flutter/screens/dashboard_screen/recent_file.dart';
import 'package:responsive_dashboard_flutter/screens/dashboard_screen/storage_detail.dart';

import '../../const/colors.dart';
import '../../model/recent_file.dart';
import '../../responsive.dart';
import 'my_field.dart';

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
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded  (
                flex: 5,
                child: Column(
                  children: [
                    const MyFiles(),
                    const SizedBox(height: defaultPadding),
                    const RecentFile(),
                    if (Responsive.isMobile(context))
                     const SizedBox(height: defaultPadding),
                    if (Responsive.isMobile(context)) const StorageDetails(),
                  ],
                ),
              ),
              if (!Responsive.isMobile(context))
              const  SizedBox(width: defaultPadding),
              // On Mobile means if the screen is less than 850 we don't want to show it
              if (!Responsive.isMobile(context))
                Expanded(
                  flex: 2,
                  child: StorageDetails(),
                ),
            ],
          )
        ],
      ),
    ));
  }
}


