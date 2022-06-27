import 'package:flutter/material.dart';
import 'package:yoga_ui/MusicPlayer.dart';
import 'package:yoga_ui/course.dart';
import 'package:yoga_ui/course_details.dart';
import 'package:yoga_ui/home.dart';

class BottomBarpage extends StatefulWidget {
  final int selectedItemIndex;
  BottomBarpage({Key? key, required this.selectedItemIndex}) : super(key: key);

  @override
  State<BottomBarpage> createState() => _BottomBarpageState();
}

class _BottomBarpageState extends State<BottomBarpage> {
  void _selectpage(int index) {
    switch (index) {
      case 0:
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));

        break;
      case 1:
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Coursepage(),
        ));

        break;
      case 2:
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: ((context) => MusicPlayerpage()),
          ),
        );
        break;

      // case 3:
      //   Navigator.of(context).pushReplacement(
      //     MaterialPageRoute(
      //       builder: (context) => MusicPlayerpage(),
      //     ),
      //   );
      //   break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Color(0xffDADADA),
      selectedItemColor: Color(0xffEBC81B),
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.selectedItemIndex,
      onTap: _selectpage,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.category_outlined,
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.military_tech_outlined,
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.queue_music_outlined,
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_active_outlined,
            size: 30,
          ),
          label: '',
        ),
      ],
    );
  }
}
