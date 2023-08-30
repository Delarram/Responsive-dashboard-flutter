import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard_flutter/screens/review_page/add_review/add_review.dart';
import 'package:responsive_dashboard_flutter/screens/review_page/review_tile.dart';

import '../../bloc/review_bloc.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<ReviewBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("review"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 12),
          itemCount: bloc.reviews.length,
          itemBuilder: (context, index) {
            final review = bloc.reviews[index];
            return ReviewTile(review: review);
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (bloc.reviews.isEmpty) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("List is empty"),
                  content: Text("Add a review first."),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("OK"),
                    ),
                  ],
                );
              },
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddReviewPage(review: bloc.reviews[0])),
            );
          }
        },

        child: Icon(Icons.add),
      ),
    );
  }
}
