import 'package:flutter/material.dart';
import 'package:my_basketball_app/Widgets/my_elevated_button_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int teamAPoint = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Points Counter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: "Pacifico",
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Pacifico",
                      ),
                    ),
                    Text(
                      "$teamAPoint",
                      style: const TextStyle(
                        fontSize: 85,
                        fontFamily: "Pacifico",
                      ),
                    ),
                    MyELevatedButtonWidget(
                      onPressed: () {
                        teamAPoint++;
                        setState(() {});
                      },
                      text: "Add 1 Points",
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MyELevatedButtonWidget(
                      onPressed: () {
                        teamAPoint += 2;
                        setState(() {});
                      },
                      text: "Add 2 Points",
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MyELevatedButtonWidget(
                      onPressed: () {
                        teamAPoint += 3;
                        setState(() {});
                      },
                      text: "Add 3 Points",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 350,
                  child: VerticalDivider(),
                ),
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Pacifico",
                      ),
                    ),
                    Text(
                      "$teamBPoints",
                      style: const TextStyle(
                        fontSize: 85,
                        fontFamily: "Pacifico",
                      ),
                    ),
                    MyELevatedButtonWidget(
                      onPressed: () {
                        teamBPoints++;
                        setState(() {});
                      },
                      text: "Add 1 Points",
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MyELevatedButtonWidget(
                      onPressed: () {
                        teamBPoints += 2;
                        setState(() {});
                      },
                      text: "Add 2 Points",
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MyELevatedButtonWidget(
                      onPressed: () {
                        teamBPoints += 3;
                        setState(() {});
                      },
                      text: "Add 3 Points",
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            MyELevatedButtonWidget(
              onPressed: () {
                teamAPoint = 0;
                teamBPoints = 0;
                setState(() {});
              },
              text: "Reset",
            ),
          ],
        ),
      ),
    );
  }
}
