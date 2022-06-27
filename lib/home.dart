import 'package:flutter/material.dart';
import 'package:yoga_ui/bottom.dart';
import 'package:yoga_ui/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool selected = false;
  bool selectdrawer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarpage(selectedItemIndex: 0),
      // key: _key,
      drawer: Drawerpage(),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffEBC81B),
            ),
            child: Stack(children: [
              Image.asset('Assets/images/XMLID 17.png'),
              Image.asset('Assets/images/XMLID 15.png'),
            ]),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 55.0),
                          child: Builder(
                            builder: (context) => InkWell(
                              onTap: () {
                                Scaffold.of(context).openDrawer();
                                // _key.currentState!.openDrawer();
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffD6B617),
                                ),
                                child: const Icon(
                                  Icons.menu,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Text(
                      'Good Morning \nShishir',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 18),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Search Category...',
                        prefixIcon: const Icon(Icons.search),
                        hintStyle: const TextStyle(color: Color(0xffA5A5A8)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      GridView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1 / 1.5, crossAxisCount: 2),
                          scrollDirection: Axis.vertical,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  right: 11.5, bottom: 23, left: 11.5),
                              child: Container(
                                width: 156,
                                // height: 192,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'Assets/images/QT-Sleep.jpg',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 15),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                            icon: selected == true
                                                ? const Icon(
                                                    Icons.favorite,
                                                    color: Color(0xffFF5A58),
                                                  )
                                                : const Icon(Icons
                                                    .favorite_outline_sharp),
                                            onPressed: () {
                                              setState(() {
                                                selected = !selected;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            'Sleep Well',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Colors.white),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'See All Meditation',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            decoration: const BoxDecoration(
                                color: Color(0xfffef4c7),
                                shape: BoxShape.circle),
                            child: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color(0xffEBC81B),
                              size: 18,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                            // width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              color: Color(0xffF0F3F5),
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Ready to Start \nMeditation',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff3D4852)),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Meditation is a practice\nwhere an individual\nuses a technique',
                                          style: TextStyle(
                                              color: Color(0xff3D4852),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                  ),
                                  Image.asset(
                                    'Assets/images/photo-15.jpg',
                                    fit: BoxFit.cover,
                                    width: 150,
                                    height: 146,
                                  )
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
