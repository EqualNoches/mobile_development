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
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/quiz-logo.png',
                  ),
                  fit: BoxFit.cover,
                )),
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  "Learn Flutter the fun way",
                  style: TextStyle(color: Colors.white.withOpacity(0.8),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: MaterialButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return  Quiz();
                        },));
                      },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        color: Colors.white,
                        child:
                        Row(
                          children: [
                            Icon(Icons.arrow_downward_rounded),
                            Text("Start Quizz", textAlign: TextAlign.center,)
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
    ));
  }
}
