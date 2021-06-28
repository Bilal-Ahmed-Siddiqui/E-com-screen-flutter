import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> names = ["Macbook Air", "Note20 Ultra", "iPhone 12"];
  List<String> urls = [
    "assets/macbookair2.png",
    "assets/note20ultra.jpg",
    "assets/iphon12.jpeg"
  ];
  List<String> namesSmall = [
    "Macbook Air",
    "Note20 Ultra",
    "iPhone 12",
    "Gaming PC",
    "Backlit Keyboard",
    "Macbook Air",
    "Note20 Ultra",
    "iPhone 12",
    "Gaming PC",
    "Backlit Keyboard"
  ];
  List<String> urlsSmall = [
    "assets/macbookair2.png",
    "assets/note20ultra.jpg",
    "assets/iphon12.jpeg",
    "assets/gamingpc.jpg",
    "assets/backlit.jfif",
    "assets/macbookair2.png",
    "assets/note20ultra.jpg",
    "assets/iphon12.jpeg",
    "assets/gamingpc.jpg",
    "assets/backlit.jfif"
  ];
  List<double> widths = [200, 250, 250, 200];

  List<String> cats = ["Clothes", "Electronics", "Furniture", "others"];
  List<int> counts = [5, 15, 20, 15];
  List<Icon> icons = [
    Icon(
      Icons.add_shopping_cart_sharp,
      color: Colors.purple,
      size: 35,
    ),
    Icon(
      Icons.bolt,
      color: Colors.purple,
      size: 35,
    ),
    Icon(
      Icons.chair,
      color: Colors.purple,
      size: 35,
    ),
    Icon(
      Icons.forward_outlined,
      color: Colors.purple,
      size: 35,
    ),
  ];

  Padding mybox(double widthh, String namee, int count, Icon icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.black12)),
        height: 70,
        width: widthh,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: icon),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    namee,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$count items",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // do something
                  },
                )
              ],
              backgroundColor: Colors.white,
              title: Center(
                  child: Text(
                'Ecom App UI',
                style: TextStyle(color: Colors.black),
              )),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Items",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "View More",
                          style: TextStyle(fontSize: 20, color: Colors.purple),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 400,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: names.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 7, horizontal: 10),
                            child: Container(
                              height: 400,
                              width: 370,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: Colors.black12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 300,
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      child: Image.asset(
                                        urls[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    names[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20,
                                      ),
                                      Text(
                                        '5.0 (23 Reviews)',
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "More Categories",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 85,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: cats.length,
                        itemBuilder: (context, index) {
                          return mybox(widths[index], cats[index],
                              counts[index], icons[index]);
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Items",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "View More",
                          style: TextStyle(fontSize: 20, color: Colors.purple),
                        )
                      ],
                    ),
                  ),
                  GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    shrinkWrap: true,
                    children: List.generate(namesSmall.length, (index) {
                      return Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                        child: Container(
                          height: 100,
                          width: 165,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.black12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 100,
                                width: double.infinity,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  child: Image.asset(
                                    urlsSmall[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                namesSmall[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 20,
                                  ),
                                  Text(
                                    '5.0 (23 Reviews)',
                                    style: TextStyle(color: Colors.black54),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
                      backgroundColor: Colors.purple,
                      onPressed: () => null,
                      child: Icon(Icons.search),
                    ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.purple,
              unselectedItemColor: Colors.grey,
              onTap: (value) {},
              items: [
                BottomNavigationBarItem(
                  title: Text('home'),
                  icon: Icon(
                    Icons.home,
                    size: 35,
                  ),
                ),
                BottomNavigationBarItem(
                  title: Text('favs'),
                  icon: Icon(
                    Icons.favorite,
                    size: 35,
                  ),
                ),
                
                BottomNavigationBarItem(
                  title: Text('cart'),
                  icon: Icon(
                    Icons.add_shopping_cart_rounded,
                    size: 35,
                  ),
                ),
                BottomNavigationBarItem(
                  title: Text('user'),
                  icon: Icon(
                    Icons.person,
                    size: 35,
                  ),
                ),
              ],
            )));
  }
}
