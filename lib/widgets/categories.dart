import 'package:flutter/material.dart';
import 'package:health_ui/widgets/favorite_card.dart';
import 'package:health_ui/widgets/header.dart';
import 'package:health_ui/widgets/workout_category.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(text: 'Workout Categories'),
        SizedBox(height: 12.0),
        Container(
          height: 250,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.5,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            scrollDirection: Axis.horizontal,
            children: [
              WorkoutCategory(),
              WorkoutCategory(),
              WorkoutCategory(),
              WorkoutCategory(),
              WorkoutCategory(),
              WorkoutCategory(),
            ],
          ),
        )
      ],
    );
  }
}
