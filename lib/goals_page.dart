import 'package:flutter/material.dart';
import 'package:health_ui/config.dart';
import 'package:health_ui/goal_card.dart';

class GoalsPage extends StatelessWidget {
  const GoalsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 72.0),
              child: Text(
                'What Are Your Goals?',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
              child: Text(
                'Let us know what your skills are so we can help you achieve them',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 24.0),
            GoalCard(
              upperTitle: 'HIIT',
              mainTitle: 'Lose Weight',
              icon: Icons.calendar_today_rounded,
            ),
            GoalCard(
              upperTitle: 'BODYWEIGHT',
              mainTitle: 'Be Toned',
              icon: Icons.run_circle_outlined,
            ),
            GoalCard(
              upperTitle: 'WEIGHTS',
              mainTitle: 'Gain Muscle',
              icon: Icons.accessibility_new_rounded,
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Continue',
            style: TextStyle(fontSize: 22.0),
          ),
          style: ButtonStyle(
              minimumSize:
                  MaterialStateProperty.all<Size>(Size(double.infinity, 70)),
              elevation: MaterialStateProperty.all<double>(0.0),
              backgroundColor: MaterialStateProperty.all<Color>(startBlue)),
        ),
      ),
    );
  }
}
