import 'package:flutter/cupertino.dart';

import '../model/review_model.dart';

class ReviewBloc extends ChangeNotifier{
  List<Review> reviews = [];

  void addReview(Review review){
    reviews.add(review);
    notifyListeners();
  }


  void updateReview(int index, Review updateReview){
    reviews[index] = updateReview;
    notifyListeners();
  }
}