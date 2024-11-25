import 'package:capstone/Module%20Contents/Microscopy/Microscopy_AT/Microscopy_AT_1_2/Microscopy_AT_1_2.dart';
import 'package:capstone/Module%20Contents/Microscopy/Microscopy_AT/Microscopy_AT_1_2/result.dart';
import 'package:capstone/categories/microscopy_screen.dart';
import 'package:flutter/material.dart';
import 'item.dart' as quizItemsFile;

import 'package:provider/provider.dart';
import 'package:capstone/globals/global_variables_notifier.dart';

class Microscopy_AT_Quiz_2_Score extends StatelessWidget {
  final int totalQuestions;
  final int correctAnswers;
  final List<quizItemsFile.QuizItemContent> quizItems;
  final Map<int, String> userAnswers;

  Microscopy_AT_Quiz_2_Score({
    required this.totalQuestions,
    required this.correctAnswers,
    required this.quizItems,
    required this.userAnswers,
  });

  String toCamelCase(String text) {
    return text[0].toLowerCase() + text.substring(1);
  }

  int calculateCorrectAnswers() {
    int correctCount = 0;
    userAnswers.forEach((questionIndex, userAnswer) {
      var correctAnswers = quizItems[questionIndex]
          .answer
          .split(RegExp(',|or|and'))
          .map((s) => s.trim())
          .toList();
      if (correctAnswers.contains(userAnswer.toLowerCase()) ||
          correctAnswers.contains(userAnswer.toUpperCase()) ||
          correctAnswers.contains(userAnswer) ||
          correctAnswers.contains(toCamelCase(userAnswer))) {
        correctCount++;
      }
    });
    return correctCount;
  }

  @override
  Widget build(BuildContext context) {
    int finalCorrectAnswers = calculateCorrectAnswers();

      WidgetsBinding.instance!.addPostFrameCallback((_) {
        final globalVariables =
            Provider.of<GlobalVariables>(context, listen: false);
        globalVariables.incrementQuizTakeCount('quiz1');
        globalVariables.setGlobalScore('quiz1', finalCorrectAnswers);
        globalVariables.updateGlobalRemarks(
            'quiz1', finalCorrectAnswers, totalQuestions);
        globalVariables.setQuizItemCount('quiz1', totalQuestions);
        globalVariables.printGlobalVariables();
      });

    bool passed = (finalCorrectAnswers / totalQuestions) >= 0.5;

    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MicroscopyScreen()),
        );
        return false;
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 125, 112, 101),
              pinned: true,
              expandedHeight: 120.0,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 50,
                  right: 10,
                  bottom: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Microscopy',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Assessment Task',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Quiz 1: ',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Microscopy_AT_1_2(),
                    ));
                  },
                ),
              ),
            ),
            SliverFillRemaining(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Total Questions: $totalQuestions',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Correct Answers: $finalCorrectAnswers',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'You ${passed ? 'passed' : 'failed'} the quiz!',
                      style: TextStyle(
                        fontSize: 24,
                        color: passed ? Colors.green : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Microscopy_AT_Quiz_2_Results(
                              quizItems: quizItems,
                              userAnswers: userAnswers,
                            ),
                          ),
                        );
                      },
                      child: Text('Check Results'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
