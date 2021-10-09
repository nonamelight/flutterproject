import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    print('createState');
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  // This widget is the root of your application.
  var switchValue = false;
  String test = 'hello';
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    print('build');
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        darkTheme: ThemeData.light(),
        home: Scaffold(
          body: Center(
            child: ElevatedButton(
                child: Text('$test'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(_color)),
                onPressed: () {
                  if (test == 'hello') {
                    setState(() {
                      test = 'fluttere';
                      _color = Colors.amber;
                    });
                  } else {
                    setState(() {
                      test = 'hello';
                      _color = Colors.blue;
                    });
                  }
                }),
          ),
        ));
  }
  @override
  void initState(){
    super.initState();
    print('initState');
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    print('didChangeDependencies');
  }
}
