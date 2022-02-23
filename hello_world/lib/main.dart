import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello World Travel Title",
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Hello World Travel App"),
              backgroundColor: Colors.deepPurple,),
            body: Builder(builder: (context) => SingleChildScrollView(
              child: ( 
                  Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Hello World Travel',
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[800])),
                        ),
                       const Padding(
                         padding: EdgeInsets.all(5),
                         child: Text(
                           'Discover the World',
                           style: TextStyle(
                             fontSize: 20,
                             color: Colors.deepPurpleAccent
                           ),
                         ),
                       ),
                       Padding(
                         padding: EdgeInsets.all(15),
                         child: Image.network('https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                            height: 350,
                          ),
                       ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: ElevatedButton(
                            child: const Text("Contact Us"),
                            onPressed: () => contactUs(context),
                          ),
                        ),
                      ]),
                  ))),
            ))));
  }
  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Contact Us'),
          content: const Text('Mail us at hello@world.com'),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}