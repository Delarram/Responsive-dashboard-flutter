import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard_flutter/bloc/review_bloc.dart';

import '../../../model/review_model.dart';

class ReviewForm extends StatefulWidget {

  final Review? initialReview;
  const ReviewForm({Key? key, this.initialReview}) : super(key: key);

  @override
  State<ReviewForm> createState() => _ReviewFormState();
}

class _ReviewFormState extends State<ReviewForm> {
  late TextEditingController _textController;
  late TextEditingController _ratingController;
  late bool _isEditing;


  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: widget.initialReview?.title ?? '');
    _ratingController = TextEditingController(text: widget.initialReview?.rating.toString() ?? '');
    _isEditing = widget.initialReview != null;
  }

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<ReviewBloc>(context, listen: false);
    return Column(
      children: [
        TextField(
          controller: _textController,
          decoration: InputDecoration(labelText: 'Review Text'),
        ),
        SizedBox(height: 16),
        TextField(
          controller: _ratingController,
          decoration: InputDecoration(labelText: 'Rating'),
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            final text = _textController.text;
            final rating = int.tryParse(_ratingController.text) ?? 0;

            if (_isEditing) {
              bloc.editReview(widget.initialReview!.id, text, rating);
            } else {
              final review = Review(
                id: DateTime.now().toString(),
                title: text,
                rating: rating,
              );
              bloc.addReview(review);
            }
            Navigator.pop(context);
          },
          child: Text(_isEditing ? 'Save Changes' : 'Add Review'),
        ),
      ],
    );
  }
  @override
  void dispose() {
    _textController.dispose();
    _ratingController.dispose();
    super.dispose();
  }
}
