import 'package:flutter/material.dart';
import 'package:health_ui/config.dart';
import 'package:health_ui/widgets/goal_card.dart';
import 'package:health_ui/pages/home_page.dart';
import 'package:line_icons/line_icons.dart';

class GoalsPage extends StatelessWidget {
  const GoalsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 100.0),
        child: ListView(
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
              icon: LineIcons.calendarCheck,
            ),
            GoalCard(
              upperTitle: 'BODYWEIGHT',
              mainTitle: 'Be Toned',
              icon: LineIcons.running,
            ),
            GoalCard(
              upperTitle: 'WEIGHTS',
              mainTitle: 'Gain Muscle',
              icon: LineIcons.dumbbell,
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
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
