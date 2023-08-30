import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/model/review_model.dart';
import 'package:responsive_dashboard_flutter/screens/review_page/edit_review/review_form.dart';

class EditReviewScreen extends StatelessWidget {
  final Review review;
  const EditReviewScreen({Key? key, required this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Review"),
      ),
      body: ReviewForm(initialReview:review),
    );
  }
}
