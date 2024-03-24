import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  static const double gravity = 0.08;
  static const double jumpVelocity = -3.5;
  static const double initialPos = -0.3;
  double birdYPos = initialPos;
  double birdVelocity = 0.0;
  bool isGameStarted = false;
  int score = 0;
  Random random = Random();
  List<double> pipeX = [];
  List<double> pipeY = [];

  @override
  void initState() {
    super.initState();
    resetGame();
  }

  void resetGame() {
    setState(() {
      birdYPos = initialPos;
      birdVelocity = 0.0;
      isGameStarted = false;
      score = 0;
      pipeX.clear();
      pipeY.clear();
    });
  }

  void startGame() {
    if (!isGameStarted) {
      isGameStarted = true;
      Timer.periodic(Duration(milliseconds: 60), (timer) {
        setState(() {
          // Update bird position
          birdVelocity += gravity;
          birdYPos += birdVelocity;

          // Generate pipes
          if (pipeX.isEmpty || pipeX.last < 0.6) {
            double newPipeY = random.nextDouble() * 0.6 - 0.3;
            pipeX.add(1.5);
            pipeY.add(newPipeY);
          }

          // Move pipes
          for (int i = 0; i < pipeX.length; i++) {
            pipeX[i] -= 0.03;
            if (pipeX[i] < -0.2) {
              pipeX.removeAt(i);
              pipeY.removeAt(i);
              i--;
              score++;
            }
          }

          // Check for collision
          if (birdYPos <= -0.8 || birdYPos >= 0.6) {
            timer.cancel();
            resetGame();
          } else {
            for (int i = 0; i < pipeX.length; i++) {
              if (birdYPos <= pipeY[i] + 0.6 &&
                  birdYPos >= pipeY[i] + 0.4 &&
                  pipeX[i] <= 0.3 &&
                  pipeX[i] >= -0.2) {
                timer.cancel();
                resetGame();
              }
            }
          }
        });
      });
    }
  }

  void jump() {
    setState(() {
      birdVelocity = jumpVelocity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flappy Bird'),
      ),
      body: GestureDetector(
        onTap: () {
          if (!isGameStarted) {
            startGame();
          } else {
            jump();
          }
        },
        child: Stack(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 60),
              color: Colors.blue,
              child: CustomPaint(
                painter: GamePainter(
                  birdYPos: birdYPos,
                  pipeX: pipeX,
                  pipeY: pipeY,
                ),
              ),
            ),
            if (!isGameStarted)
              Center(
                child: Text(
                  'Tap to Start',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            Positioned(
              top: 10,
              right: 10,
              child: Text(
                'Score: $score',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GamePainter extends CustomPainter {
  final double birdYPos;
  final List<double> pipeX;
  final List<double> pipeY;

  GamePainter({required this.birdYPos, required this.pipeX, required this.pipeY});

  @override
  void paint(Canvas canvas, Size size) {
    // Draw bird
    canvas.drawCircle(
      Offset(-0.1, birdYPos),
      0.05,
      Paint()..color = Colors.yellow,
    );

    // Draw pipes
    for (int i = 0; i < pipeX.length; i++) {
      canvas.drawRect(
        Rect.fromLTRB(
          pipeX[i],
          pipeY[i] + 0.6,
          pipeX[i] + 0.2,
          pipeY[i] + 1.0,
        ),
        Paint()..color = Colors.green,
      );
      canvas.drawRect(
        Rect.fromLTRB(
          pipeX[i],
          pipeY[i] - 1.0,
          pipeX[i] + 0.2,
          pipeY[i] + 0.4,
        ),
        Paint()..color = Colors.green,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
