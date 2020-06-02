import 'package:flutter/material.dart';
import 'Photoviewer.dart';
import 'UrlForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Image Temp Bookmarker',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Image Temp Bookmarker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<String> list;

  @override
  void initState() {
    super.initState();
    
    list = new List();
    list.add('https://3.bp.blogspot.com/-Dozqrh0Fkkk/TXC2qqQy39I/AAAAAAAADnU/nESieUfOU9Y/s1600/ace_of_spades.png');
    list.add('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg');
    list.add('https://image.shutterstock.com/image-vector/back-side-design-playing-cards-600w-629306936.jpg');
    list.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_King_of_spades.png');
    list.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_Queen_of_spades.png');
    list.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_Jack_of_spades.png');
    list.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_10_of_spades.png');
    list.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_9_of_spades.png');
    list.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_8_of_spades.png');
    list.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_7_of_spades.png');
    list.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_6_of_spades.png');
    list.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_5_of_spades.png');
    list.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_4_of_spades.png');
    list.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_3_of_spades.png');
    list.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_2_of_spades.png');
    list.add('https://publicdomainvectors.org/photos/nicubunu_Ornamental_deck_Ace_of_spades.png');
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _updatePhotoList(String value) {
    setState(() {
        list.add(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Photoviewer(urlList: list)/*Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),*/
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {
          showDialog(
          context: context,
          child: new AlertDialog(
            title: new Text("Input a Url to be added:"),
            content: new UrlForm(onChanged: _updatePhotoList),
          )
        );
      },
        /*_incrementCounter,*/
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
