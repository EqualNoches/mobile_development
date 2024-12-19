import 'package:flutter/material.dart';
import 'package:navigation_proyect/views/quiz.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/quiz-logo.png',
                  ),
                  fit: BoxFit.cover,
                )),
                alignment: Alignment.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  "Learn Flutter the fun way",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const Quiz();
                            },
                          ));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.white,
                        child: const Row(
                          children: [
                            Icon(Icons.arrow_right_alt),
                            Text(
                              "Start Quizz",
                              textAlign: TextAlign.center,
                            ),
                            Opacity(opacity: 0.9)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    )
    );
  }
}
