import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/screens/review_page/edit_review/review_form.dart';

import '../../../model/review_model.dart';

class AddReviewPage extends StatelessWidget {
  const AddReviewPage({Key? key, required this.review}) : super(key: key);
  final Review review;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Review'),),
      body: ReviewForm(initialReview: review,),
    );
  }
}
