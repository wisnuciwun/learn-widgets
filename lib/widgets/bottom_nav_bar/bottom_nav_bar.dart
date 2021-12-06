import 'package:flutter/material.dart';

// showNavBar(){
//   Scaffold(
//       appBar: AppBar(
//         title: Text("Bottom Nav Bar"),
//         centerTitle: true,
//       ),
//       body: Center(child: Text("Home")),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//               backgroundColor: Colors.black),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.note),
//               label: 'Notes',
//               backgroundColor: Colors.black),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.adjust),
//               label: 'Settings',
//               backgroundColor: Colors.black)
//         ],
//       ),
//     );
// }

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int currentIndex = 0;
  var pages = [
    Center(
      child: Text(
        "Home",
        style: TextStyle(color: Colors.blueGrey, fontSize: 30),
      ),
    ),
    Center(
      child: Text(
        "Notes",
        style: TextStyle(color: Colors.blueGrey, fontSize: 30),
      ),
    ),
    Center(
      child: Text(
        "Settings",
        style: TextStyle(color: Colors.blueGrey, fontSize: 30),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Bottom Nav Bar"),
          centerTitle: false,
          elevation: 20,
        ),
        // body: pages[currentIndex],
        body: IndexedStack(// currentIndex alternatives, keep state of wiget tree
          children: pages,
          index: currentIndex,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          iconSize: 30,
          selectedFontSize: 15,
          unselectedFontSize: 9,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          currentIndex: currentIndex,
          onTap: (index) => {
            setState(() {
              currentIndex = index;
            })
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home', //important
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.note),
                label: 'Notes',
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.adjust),
                label: 'Settings',
                backgroundColor: Colors.greenAccent)
          ],
        ),
      );
}
