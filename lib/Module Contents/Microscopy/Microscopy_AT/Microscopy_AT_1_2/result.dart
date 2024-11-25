import 'package:capstone/Module%20Contents/Microscopy/Microscopy_AT/Microscopy_AT_1_2/Microscopy_AT_1_2.dart';
import 'package:capstone/Module%20Contents/Microscopy/Microscopy_AT/Microscopy_AT_1_2/score.dart';
import 'package:flutter/material.dart';
import 'item.dart' as quizItemsFile;

class Microscopy_AT_Quiz_2_Results extends StatelessWidget {
  final List<quizItemsFile.QuizItemContent> quizItems;
  final Map<int, String> userAnswers;

  Microscopy_AT_Quiz_2_Results({
    required this.quizItems,
    required this.userAnswers,
  });

  String toCamelCase(String text) {
    return text[0].toLowerCase() + text.substring(1);
  }

  bool isAnswerCorrect(int questionIndex, String userAnswer) {
    var correctAnswers = quizItems[questionIndex]
        .answer
        .split(RegExp(',|or|and'))
        .map((s) => s.trim())
        .toList();
    return correctAnswers.contains(userAnswer.toLowerCase()) ||
        correctAnswers.contains(userAnswer.toUpperCase()) ||
        correctAnswers.contains(userAnswer) ||
        correctAnswers.contains(toCamelCase(userAnswer));
  }

  int calculateScore() {
    int score = 0;
    userAnswers.forEach((questionIndex, userAnswer) {
      if (isAnswerCorrect(questionIndex, userAnswer)) {
        score++;
      }
    });
    return score;
  }

  @override
  Widget build(BuildContext context) {
    int totalQuestions = quizItems.length;
    int correctAnswers = calculateScore();

    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Microscopy_AT_Quiz_2_Score(
              totalQuestions: totalQuestions,
              correctAnswers: correctAnswers,
              quizItems: quizItems,
              userAnswers: userAnswers,
            ),
          ),
        );
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Microscopy_AT_1_2(), // Replace with actual route to Microscopy_AT_1_2 screen
                ),
              );
            },
          ),
          title: Text('Quiz Results'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Overall Score: $correctAnswers / $totalQuestions',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: totalQuestions,
                itemBuilder: (context, index) {
                  final userAnswer = userAnswers[index];
                  final correctAnswer = quizItems[index].answer;
                  final isCorrect = isAnswerCorrect(index, userAnswer ?? "");
                  final pointsText = isCorrect ? '1/1 point' : '0/1 point';

                  return Container(
                    margin: const EdgeInsets.all(20.0),
                    padding: const EdgeInsets.only(
                      bottom: 10.0,
                      right: 20.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey[200]!,
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            child: Text(
                              pointsText,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            quizItems[index].question,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10.0,
                                ),
                                child: Text(
                                  'Your answer: ${userAnswer ?? "No answer"}',
                                  style: TextStyle(
                                    color: isCorrect
                                        ? (userAnswer == correctAnswer
                                            ? Colors.green
                                            : Colors.black)
                                        : Colors.red,
                                  ),
                                ),
                              ),
                              if (!isCorrect)
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                  ),
                                  child: Text(
                                    'Correct answer: $correctAnswer',
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
