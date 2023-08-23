import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard_flutter/screens/review_page/review_page.dart';

import '../../bloc/review_bloc.dart';

class ReviewListPage extends StatelessWidget {
  const ReviewListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<ReviewBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Reviews')),
      body: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          title: Text(bloc.reviews[index].title),
          subtitle: Text(bloc.reviews[index].description),
          trailing: IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GiveReviewPage(reviewToEdit: bloc.reviews[index]),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
