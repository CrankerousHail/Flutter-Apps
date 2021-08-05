import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'story_brain.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/image.jpeg'), fit: BoxFit.cover),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 12,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF59ea9479),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Text(
                        storyBrain.getStory(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.only(left: 35.0, right: 35.0),
                        backgroundColor: Color(0xFFE97451),
                      ),
                      onPressed: () {
                        setState(() {
                          storyBrain.nextStory(1);
                        });
                      },
                      child: Text(
                        storyBrain.getChoice1(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  flex: 2,
                  child: Visibility(
                    visible: storyBrain.buttonShouldBeVisible(),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.only(left: 35.0, right: 35.0),
                          backgroundColor: Color(0xFF5F9EA0),
                        ),
                        onPressed: () {
                          setState(() {
                            storyBrain.nextStory(2);
                          });
                        },
                        child: Text(
                          storyBrain.getChoice2(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
