import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/model/review_model.dart';

class EditReviewScreen extends StatefulWidget {
  final Review review;
  const EditReviewScreen({Key? key, required this.review}) : super(key: key);

  @override
  State<EditReviewScreen> createState() => _EditReviewScreenState();
}

class _EditReviewScreenState extends State<EditReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Review"),
      ),
      body: ,
    );
  }
}
