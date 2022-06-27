import 'package:flutter/material.dart';
import 'package:yoga_ui/bottom.dart';

class Coursedetailspage extends StatefulWidget {
  const Coursedetailspage({Key? key}) : super(key: key);

  @override
  State<Coursedetailspage> createState() => _CoursedetailspageState();
}

class _CoursedetailspageState extends State<Coursedetailspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarpage(selectedItemIndex: 1),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Course Details',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        backgroundColor: Color(0xffEBC81B),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 309,
                      width: 375,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'Assets/images/Rectangle 10.png',
                            ),
                            fit: BoxFit.cover),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0, bottom: 35),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xffB8B8B8),
                                ),
                                child: Icon(Icons.play_arrow_outlined,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Clear Mind',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Admanda Smith',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: 20,
                  bottom: 0,
                  child: Container(
                    width: 50,
                    height: 50,
                    transform: Matrix4.translationValues(0, 20, 0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.star,
                        color: Color(0xffEBC81B),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffEBC81B),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffEBC81B),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffEBC81B),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffDADADA),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    '4.0 | 962 plays',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3D4852),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Here you can find various courses for different levels of training. You will be able to find exactly what suits you at\nthe moment.',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 311,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0xffEBC81B),
                      borderRadius: BorderRadius.circular(
                        18,
                      ),
                    ),
                    child: Text(
                      'Recommend',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
