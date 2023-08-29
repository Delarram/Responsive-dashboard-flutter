import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          itemCount:bloc.reviews.length,
          itemBuilder: (context,index){
final review = bloc.reviews[index];
return Container();
      }),
    );
  }
}
