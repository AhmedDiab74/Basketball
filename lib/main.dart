import 'package:flutter/material.dart';

void main() {
  runApp(basketBall());
}

class basketBall extends StatefulWidget {
  @override
  State<basketBall> createState() => _basketBallState();
}

bool max(var x) {
  return x <= 99;
}

class _basketBallState extends State<basketBall> {
  var scoreA = 0;
  var scoreB = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Basketball",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(fontSize: 50),
                    ),
                    Text(
                      "$scoreA",
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {
                          setState(() {
                            if (max(scoreA + 1)) {
                              scoreA++;
                            }
                          });
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 20),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {
                          setState(() {
                            if (max(scoreA + 2)) {
                              scoreA += 2;
                            }
                          });
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 20),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {
                          setState(() {
                            if (max(scoreA + 3)) {
                              scoreA += 3;
                            }
                          });
                        },
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 20),
                        )),
                  ],
                ),
                Container(
                  height: 500,
                  child: const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 60,
                    endIndent: 50,
                    width: 50,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(fontSize: 50),
                    ),
                    Text(
                      "$scoreB",
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {
                          setState(() {
                            if (max(scoreB + 1)) {
                              scoreB++;
                            }
                          });
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 20),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {
                          setState(() {
                            if (max(scoreB + 2)) {
                              scoreB += 2;
                            }
                          });
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 20),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {
                          setState(() {
                            if (max(scoreB + 3)) {
                              scoreB += 3;
                            }
                          });
                        },
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 20),
                        )),
                  ],
                ),
              ],
            ),
            const Divider(thickness: 0.005, height: 60),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.orange),
              onPressed: () {
                setState(() {
                  scoreA = scoreB = 0;
                });
              },
              child: const Text(
                "Reset",
                style: TextStyle(fontSize: 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
