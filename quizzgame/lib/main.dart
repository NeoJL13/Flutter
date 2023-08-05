//TODO: Step1: import package from dependence and use 'packages get'
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'quizz_brain.dart';

// TODO: Tạo 1 đối tượng QuizzBrain chứa tài nguyên từ ngân hàng câu hỏi & đáp án
QuizzBrain quizzBrain = new QuizzBrain();
void main() {
  runApp(const MyApp());
}

// TODO: Tạo và sửa thông tin trong StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Quizz game'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Icon> scoreKeeper = [];

  void addIcon(Icon icon) {
    scoreKeeper.add(icon);
  }

  Future<void> soundButton() async {
    final player = AudioPlayer();
    await player.play(AssetSource('audios/clickUI.wav'));
  }

  int _counter = 0;
  void checkAnswer(bool userPickedAnswer){
    bool correctAnswers = quizzBrain.getAnswerBoolean();
    setState(() {
      if(_counter < quizzBrain.getLengthQuestion()){
        if (userPickedAnswer == correctAnswers) {
          print('right!!');
          addIcon(Icon(Icons.check, color: Colors.green));
        } else {
          print('wrong!!');
          addIcon(Icon(Icons.close, color: Colors.red));
        }
        _counter++;
      }
      quizzBrain.nextQuestion();

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    quizzBrain.IndexQuestion(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Text(quizzBrain.getQuestionText()),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Card(
                      color: Colors.green,
                      child: TextButton(
                        onPressed: () {
                          soundButton();
                          checkAnswer(true);
                        },
                        child: SizedBox(
                          width: 60,
                          height: 45,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Center(
                              child: Text('True'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: Colors.red,
                      child: TextButton(
                        onPressed: () {
                          soundButton();
                          checkAnswer(false);
                        },
                        child: SizedBox(
                          width: 60,
                          height: 45,
                          child: Center(
                            child: Text('False'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: scoreKeeper,
            )
          ],
        ),
      ),
    );
  }
}
