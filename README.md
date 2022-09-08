# StarlightBaseAppBar

StarlightBaseAppBar is a widget that will help you to create a specific appbar.

## Preview
<a href="#ScreenShotsAndroid">
  <img src="https://user-images.githubusercontent.com/26484667/189240959-e38a8a2d-492d-43fa-a068-65912fe2800a.png" width="200px">
</a>&nbsp;&nbsp;
<a href="#ScreenShotsAndroid">
  <img src="https://user-images.githubusercontent.com/26484667/189240919-1d9ad9f7-70c7-4922-af5a-d68b9c45c582.gif" width="200px" height="410px">
</a>&nbsp;&nbsp;


## Installation

Add starlight_base_appbar as dependency to your pubspec file.


```dart
   starlight_base_appbar:
    git:
      url: https://github.com/YeMyoAung/starlight_base_appbar.git
```

## Setup

No additional integration steps are required for Android and Ios.

## Usage

First of all you need to import our package.

```dart
import 'package:starlight_base_appbar/starlight_base_appbar.dart';
```

And then you can use easily.

## Example

```dart
import 'package:flutter/material.dart';
import 'package:starlight_base_appbar/starlight_base_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyAppBar extends StarlightBaseAppBar {
  @override
  Widget builder(BuildContext context) {
    return Container();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: MyAppBar(),
      body: StarlightCallbackListView(
        invokeWhen: (double percent) {
          if (_isLoading) return;
          if (percent > 80) {
            _isLoading = true;
            Future.delayed(const Duration(seconds: 3), () {
              setState(() {
                _counter += 10;
                _isLoading = false;
              });
            });
          }
        },
        count: _counter,
        builder: (context, index) {
          return Container(
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 10),
            color: Colors.green,
            alignment: Alignment.center,
            child: Text(index.toString()),
          );
        },
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


```

## Contact Us

[Starlight Studio](https://www.facebook.com/starlightstudio.of/)
