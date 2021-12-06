import 'package:baru/widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: App(),
    routes: {
      "navbar": (context) => CustomBottomNavBar()
    },
  ));
}

class App extends StatefulWidget {

  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
List<String> screens = ['Navbar'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: screens.length, itemBuilder: (BuildContext context, int id){
        return Card(
          child: ListTile(
            title: Text(screens[id]),
            onTap: () => Navigator.of(context).pushNamed('navbar')
          ),
        );
      },),
    );
  }
}
