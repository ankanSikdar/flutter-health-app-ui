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
              WorkoutCategory(
                imageUrl:
                    'https://images.unsplash.com/photo-1534438327276-14e5300c3a48?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib',
                title: 'PLYOMETRIC',
              ),
              WorkoutCategory(
                imageUrl:
                    'https://images.unsplash.com/photo-1571388208497-71bedc66e932?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8',
                title: 'HIIT',
              ),
              WorkoutCategory(
                imageUrl:
                    'https://images.unsplash.com/photo-1596357395217-80de13130e92?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib',
                title: 'WEIGHTS',
              ),
              WorkoutCategory(
                imageUrl:
                    'https://images.unsplash.com/photo-1574680178050-55c6a6a96e0a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8',
                title: 'BODYWEIGHT',
              ),
              WorkoutCategory(
                imageUrl:
                    'https://images.unsplash.com/photo-1574680088814-c9e8a10d8a4d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib',
                title: 'LUNGES',
              ),
              WorkoutCategory(
                imageUrl:
                    'https://images.unsplash.com/photo-1597452485669-2c7bb5fef90d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib',
                title: 'CALVES',
              ),
            ],
          ),
        )
      ],
    );
  }
}
