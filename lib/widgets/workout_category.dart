import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WorkoutCategory extends StatelessWidget {
  const WorkoutCategory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: CachedNetworkImage(
            imageUrl:
                'https://images.unsplash.com/photo-1571019613576-2b22c76fd955?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8',
            fit: BoxFit.fitWidth,
            placeholder: (_, __) => Center(child: CircularProgressIndicator()),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Title',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ]),
    );
  }
}
