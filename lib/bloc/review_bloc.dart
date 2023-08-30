import 'package:flutter/cupertino.dart';

import '../model/review_model.dart';

class ReviewBloc extends ChangeNotifier{
  List<Review> reviews = [];

  void addReview(Review review){
    reviews.add(review);
    notifyListeners();
  }

  void editReview(String id,String newText, int newRating){
    final reviewIndex = reviews.indexWhere((review) => review.id == id);
    if(reviewIndex != -1){
      reviews[reviewIndex].title = newText;
      reviews[reviewIndex].rating = newRating;
      notifyListeners();
    }
  }


}