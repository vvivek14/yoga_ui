import 'package:flutter/material.dart';
import 'package:yoga_ui/Calmness.dart';

class Drawerpage extends StatefulWidget {
  const Drawerpage({Key? key}) : super(key: key);

  @override
  State<Drawerpage> createState() => _DrawerpageState();
}

class _DrawerpageState extends State<Drawerpage> {
  bool selectdrawer = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.77,
      child: Drawer(
        child: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: ListView(
              children: [
                DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'Assets/images/Ellipse 26.png',
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const Text(
                        'Alberto Raya',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'albertoraya@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xffB9B9B9),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                    title: const Text(
                      'Calmness Meter',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Calmness_Meterpage(),
                          ));
                    }),
                ListTile(
                  title: const Text(
                    'Favorite Listing',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    'Advance Search',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    'Sounds',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    'Sleep Timer',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    'Reminder',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    'Profile',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    'State',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    'Feeling Checking',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    'Motivational quotes',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    'Stress SOS',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    'Breathing Exercise',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    'Blog Listing',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    'Subscription page',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    'Refer friend',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: TextButton(
                    onPressed: () {
                      setState(() {
                        selectdrawer = !selectdrawer;
                      });
                    },
                    child: Text(
                      'Flight Mode',
                      style: TextStyle(
                          color: selectdrawer == true
                              ? Color(0xffD6B617)
                              : Colors.black),
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
