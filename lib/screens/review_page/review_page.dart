import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../bloc/review_bloc.dart';
import '../../model/review_model.dart';

class GiveReviewPage extends StatelessWidget {
  final Review? reviewToEdit; // For editing reviews
  const GiveReviewPage({Key? key, this.reviewToEdit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<ReviewBloc>(context);

    final titleController = TextEditingController(text: reviewToEdit?.title ?? '');
    final descriptionController = TextEditingController(text: reviewToEdit?.description ?? '');
    Object initialRating = reviewToEdit?.ratinng?? 1.0;

    return Scaffold(
      appBar: AppBar(
        title: Text(reviewToEdit == null ? 'Give Review' : 'Edit Review'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(controller: titleController, decoration: InputDecoration(labelText: 'Title')),
            TextField(controller: descriptionController, decoration: InputDecoration(labelText: 'Description')),
            ElevatedButton(
              onPressed: () {
                if (reviewToEdit == null) {
                  bloc.addReview(Review(
                    title: titleController.text,
                    description: descriptionController.text, ratinng: '',
                  ));
                } else {
                  final updatedReview = Review(
                    title: titleController.text,
                    description: descriptionController.text,
             ratinng: '',
                  );
                  bloc.updateReview(bloc.reviews.indexOf(reviewToEdit!), updatedReview);
                }
                Navigator.pop(context);
              },
              child: Text(reviewToEdit == null ? 'Submit Review' : 'Update Review'),
            ),
          ],
        ),
      ),
    );
  }
}