// import 'package:flutter/material.dart';
// import 'package:portfolio/landingweb.dart';
// // import 'package:minimal/pages/pages.dart';
// import 'package:responsive_framework/responsive_framework.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // Wrapping the app with a builder method makes breakpoints
//       // accessible throughout the widget tree.
//       builder: (context, child) => ResponsiveBreakpoints.builder(
//         breakpoints: [
//           const Breakpoint(start: 0, end: 450, name: MOBILE),
//           const Breakpoint(start: 451, end: 800, name: TABLET),
//           const Breakpoint(start: 801, end: 1920, name: DESKTOP),
//           const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
//         ],
//         child: child!,
//       ),
//       initialRoute: '/',
//       onGenerateRoute: (RouteSettings settings) {
//         return MaterialPageRoute(builder: (context) {
//           return BouncingScrollWrapper.builder(
//               context, buildPage(settings.name ?? ''),
//               dragWithMouse: true);
//         });
//       },
//       debugShowCheckedModeBanner: false,
//       home: landingweb());
//     );
//   }

  // onGenerateRoute route switcher.
  // Navigate using the page name, `Navigator.pushNamed(context, ListPage.name)`.
//   Widget buildPage(String minimal) {
//     switch (minimal) {
//       case '/':
//       case ListPage.minimal:
//         return const ListPage();
//       case PostPage.minimal:
//       // Custom "per-page" breakpoints.
//         return const ResponsiveBreakpoints(breakpoints: [
//           Breakpoint(start: 0, end: 480, name: MOBILE),
//           Breakpoint(start: 481, end: 1200, name: TABLET),
//           Breakpoint(start: 1201, end: double.infinity, name: DESKTOP),
//         ], child: LandingPageWeb());
//       case TypographyPage.name:
//         return const TypographyPage();
//       default:
//         return const SizedBox.shrink();
//     }
//   }
// }


// // ignore_for_file: prefer_const_constructors
//
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/LandingMobile.dart';
import 'package:portfolio/LandingWeb.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(

        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black38),
        useMaterial3: true,
      ),
      home: LayoutBuilder(builder:(context,constraints){
          if(constraints.maxWidth>800){
            return LandingPageWeb();
          } else {
            return LandingPageMobile();
          }
      } ),
    );
  }
}

// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({super.key, required this.title});
//
// //   // This widget is the home page of your application. It is stateful, meaning
// //   // that it has a State object (defined below) that contains fields that affect
// //   // how it looks.
//
// //   // This class is the configuration for the state. It holds the values (in this
// //   // case the title) provided by the parent (in this case the App widget) and
// //   // used by the build method of the State. Fields in a Widget subclass are
// //   // always marked "final".
//
// //   final String title;
//
// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }
//
// // class _MyHomePageState extends State<MyHomePage> {
// //   int _counter = 0;
//
// //   void _incrementCounter() {
// //     setState(() {
// //       // This call to setState tells the Flutter framework that something has
// //       // changed in this State, which causes it to rerun the build method below
// //       // so that the display can reflect the updated values. If we changed
// //       // _counter without calling setState(), then the build method would not be
// //       // called again, and so nothing would appear to happen.
// //       _counter++;
// //     });
// //   }
//
// //   @override
// //   Widget build(BuildContext context) {
// //     // This method is rerun every time setState is called, for instance as done
// //     // by the _incrementCounter method above.
// //     //
// //     // The Flutter framework has been optimized to make rerunning build methods
// //     // fast, so that you can just rebuild anything that needs updating rather
// //     // than having to individually change instances of widgets.
// //     return Scaffold(
// //       appBar: AppBar(
// //         // TRY THIS: Try changing the color here to a specific color (to
// //         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
// //         // change color while the other colors stay the same.
// //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
// //         // Here we take the value from the MyHomePage object that was created by
// //         // the App.build method, and use it to set our appbar title.
// //         title: Text(widget.title),
// //       ),
// //       body: Center(
// //         // Center is a layout widget. It takes a single child and positions it
// //         // in the middle of the parent.
// //         child: Column(
// //           // Column is also a layout widget. It takes a list of children and
// //           // arranges them vertically. By default, it sizes itself to fit its
// //           // children horizontally, and tries to be as tall as its parent.
// //           //
// //           // Column has various properties to control how it sizes itself and
// //           // how it positions its children. Here we use mainAxisAlignment to
// //           // center the children vertically; the main axis here is the vertical
// //           // axis because Columns are vertical (the cross axis would be
// //           // horizontal).
// //           //
// //           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
// //           // action in the IDE, or press "p" in the console), to see the
// //           // wireframe for each widget.
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             const Text(
// //               'You have pushed the button this many times:',
// //             ),
// //             Text(
// //               '$_counter',
// //               style: Theme.of(context).textTheme.headlineMedium,
// //             ),
// //           ],
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: _incrementCounter,
// //         tooltip: 'Increment',
// //         child: const Icon(Icons.add),
// //       ), // This trailing comma makes auto-formatting nicer for build methods.
// //     );
// //   }
// // }
