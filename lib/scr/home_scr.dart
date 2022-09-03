import 'package:flutter/material.dart';
import 'package:task/scr/category_view.dart';
import 'package:task/utils/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final images = [
    'assets/7.png',
    'assets/9.png',
    'assets/10.png',
  ];
  final image = [
    'assets/4.png',
    'assets/5.png',
    'assets/6.png',
    'assets/4.png',
    'assets/5.png',
    'assets/6.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(color: MyColor.blackColor),
        unselectedLabelStyle: TextStyle(color: MyColor.blackColor),
        backgroundColor: MyColor.whiteColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: MyColor.primaryColor,
              ),
              label: 'Home',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: MyColor.primaryColor,
              ),
              label: 'Search',
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: MyColor.primaryColor,
            ),
            label: 'Profile',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Sundeep',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: MyColor.whiteColor,
                      ),
                    ),
                    Text(
                      'WelCome',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: MyColor.whiteColor),
                    ),
                  ],
                ),
                Icon(
                  Icons.search,
                  color: MyColor.whiteColor,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: SizedBox(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: images.length,
                itemBuilder: (context, index) => Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColor.whiteColor,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        images[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Categories',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: MyColor.whiteColor,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const CategoryPage(title: 'Top Categories')));
                  },
                  child: SizedBox(
                    child: Row(
                      children: [
                        Text(
                          'See all',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: MyColor.whiteColor),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: MyColor.whiteColor,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: image.length,
                itemBuilder: (context, index) => Container(
                  height: 80,
                  width: 80,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColor.whiteColor,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        image[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot deals',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: MyColor.whiteColor,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const CategoryPage(title: 'Hot deals')));
                  },
                  child: SizedBox(
                    child: Row(
                      children: [
                        Text(
                          'See all',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: MyColor.whiteColor),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: MyColor.whiteColor,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      width: 80,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MyColor.whiteColor,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image[index],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Allen Solly',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: MyColor.whiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Mens Custom',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: MyColor.whiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '\$12400',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: MyColor.whiteColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Trending',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: MyColor.whiteColor,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const CategoryPage(title: 'Trending')));
                  },
                  child: SizedBox(
                    child: Row(
                      children: [
                        Text(
                          'See all',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: MyColor.whiteColor),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: MyColor.whiteColor,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: SizedBox(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MyColor.whiteColor,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image[index],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Allen Solly',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: MyColor.whiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Mens Custom',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: MyColor.whiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '\$12400',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: MyColor.whiteColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
