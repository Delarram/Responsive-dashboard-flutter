import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/model/review_model.dart';

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

      },
      ),
    );
  }
}
