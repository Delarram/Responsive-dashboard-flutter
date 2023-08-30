import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/model/review_model.dart';

import 'edit_review/edit_review_page.dart';

class ReviewTile extends StatelessWidget {

  final Review review;
  const ReviewTile({Key? key, required this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(review.title),
      subtitle: Text("Rating : ${review.rating}")
      ,
      trailing: IconButton(
        icon: Icon(Icons.edit),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditReviewScreen(review: review),
            ),
          );
      },
      ),
    );
  }
}
