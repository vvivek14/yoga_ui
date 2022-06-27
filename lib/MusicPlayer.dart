import 'package:flutter/material.dart';
import 'package:yoga_ui/Music_play.dart';
import 'package:yoga_ui/bottom.dart';

class MusicPlayerpage extends StatefulWidget {
  const MusicPlayerpage({Key? key}) : super(key: key);

  @override
  State<MusicPlayerpage> createState() => _MusicPlayerpageState();
}

class _MusicPlayerpageState extends State<MusicPlayerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarpage(selectedItemIndex: 2),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffEBC81B),
        centerTitle: true,
        title: const Text(
          'Music Player',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 96,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffEBC81B),
                    ),
                    child: const Text(
                      'Trending',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 96,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffEBC81B)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'Popular',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color(0xffEBC81B),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 96,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffEBC81B)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'Top Chart',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color(0xffEBC81B),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 96,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffEBC81B)),
                    ),
                    child: const Text(
                      'Trending',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color(0xffEBC81B),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 192,
                          width: 335,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image:
                                      AssetImage('Assets/images/forest3.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(16)),
                        ),
                        Positioned(
                          top: 22,
                          left: 22,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(.2),
                            ),
                            child: const Icon(
                              Icons.favorite_border,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 22,
                          bottom: 41,
                          child: Text(
                            'Productivity',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                        const Positioned(
                          left: 22,
                          bottom: 22,
                          child: Text(
                            'By. Gustavo',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                        ),
                        const Positioned(
                          right: 22,
                          bottom: 41,
                          child: Text(
                            '28',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                        const Positioned(
                          right: 22,
                          bottom: 22,
                          child: Text(
                            'Songs',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Center(
                    child: Icon(
                      Icons.keyboard_control,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      'Recently Played',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Musicplaypage(),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color: Color(0xffDADADA),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.play_arrow,
                                      size: 22,
                                      color: Color(0xff171717),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Sleep Moon',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Rule over meditation',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff7A7A7A),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  const Spacer(),
                                  const Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                    color: Color(
                                      0xffA5A5A8,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Divider(
                            thickness: 1.5,
                            color: Color(0xffEBEBEB),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
