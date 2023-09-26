import 'package:flutter/material.dart';
import 'package:quizapp/database.dart';
import 'package:quizapp/score.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? value;
  int? ans;
  int quesCount = 0;

  int quesNo = 0;
  int totAns = 0;
  void goToNextQuestion() {
    if (quesNo < DataBase.quizData.length - 1) {
      setState(() {
        quesNo++;
        value = null;
        quesCount++;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Score(ans: totAns),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 138, 167, 191),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Flutter Quiz"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://th.bing.com/th?id=OIP.jbhZjQfmi66pyo9tpVlTTgHaEG&w=335&h=186&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Question:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text("${quesNo + 1}/10",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          DataBase.quizData[quesNo]['question'],
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  height: 200,
                  width: 300,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Center(
                  child: Container(
                    width: 350,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 5,
                      ),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        Color buttonColor;
                        buttonColor = (value == index)
                            ? (value == DataBase.quizData[quesNo]['answer']
                                ? Colors.green
                                : Colors.red)
                            : Colors.transparent;

                        return ElevatedButton(
                          onPressed: () {
                            setState(() {
                              value = index;
                              if (value ==
                                  DataBase.quizData[quesNo]['answer']) {
                                totAns++;
                              } else {
                                print(value);
                              }
                            });
                          },
                          child: Text(
                            DataBase.quizData[quesNo]['options'][index],
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  vertical: 25, horizontal: 25),
                              minimumSize: Size(250, 60),
                              primary: buttonColor),
                        );
                      },
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  goToNextQuestion();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    height: 40,
                    width: 120,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
