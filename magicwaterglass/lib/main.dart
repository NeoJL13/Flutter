import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Magic Water Glass'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
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
        children: [
          Card(
            color: Colors.amberAccent,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Theme.of(context).colorScheme.outline),
                borderRadius: const BorderRadius.all(Radius.circular(60))),
            child: Center(
              child: TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(
                    AssetSource('audios/note1.wav'),
                  );
                },
                child: SizedBox(
                  width: 120,
                  height: 60,
                  child: Center(
                    child: Text(
                      'Note 1th',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            color: Colors.teal,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Theme.of(context).colorScheme.outline),
                borderRadius: const BorderRadius.all(Radius.circular(60))),
            child: Center(
              child: TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(
                    AssetSource('audios/note2.wav'),
                  );
                },
                child: SizedBox(
                  width: 120,
                  height: 60,
                  child: Center(
                    child: Text(
                      'Note 2th',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            color: Colors.green,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Theme.of(context).colorScheme.outline),
                borderRadius: const BorderRadius.all(Radius.circular(60))),
            child: Center(
              child: TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(
                    AssetSource('audios/note3.wav'),
                  );
                },
                child: SizedBox(
                  width: 120,
                  height: 60,
                  child: Center(
                    child: Text(
                      'Note 3th',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            color: Colors.pinkAccent,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Theme.of(context).colorScheme.outline),
                borderRadius: const BorderRadius.all(Radius.circular(60))),
            child: Center(
              child: TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(
                    AssetSource('audios/note4.wav'),
                  );
                },
                child: SizedBox(
                  width: 120,
                  height: 60,
                  child: Center(
                    child: Text(
                      'Note 4th',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            color: Colors.red,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Theme.of(context).colorScheme.outline),
                borderRadius: const BorderRadius.all(Radius.circular(60))),
            child: Center(
              child: TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(
                    AssetSource('audios/note5.wav'),
                  );
                },
                child: SizedBox(
                  width: 120,
                  height: 60,
                  child: Center(
                    child: Text(
                      'Note 5th',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            color: Colors.deepPurple,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Theme.of(context).colorScheme.outline),
                borderRadius: const BorderRadius.all(Radius.circular(60))),
            child: Center(
              child: TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(
                    AssetSource('audios/note6.wav'),
                  );
                },
                child: SizedBox(
                  width: 120,
                  height: 60,
                  child: Center(
                    child: Text(
                      'Note 6th',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            color: Colors.purple,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Theme.of(context).colorScheme.outline),
                borderRadius: const BorderRadius.all(Radius.circular(60))),
            child: Center(
              child: TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(
                    AssetSource('audios/note7.wav'),
                  );
                },
                child: SizedBox(
                  width: 120,
                  height: 60,
                  child: Center(
                    child: Text(
                      'Note 1th',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
