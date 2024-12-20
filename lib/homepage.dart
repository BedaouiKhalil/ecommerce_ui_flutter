import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List categories = [
    {
      "iconname": Icons.laptop,
      "title": "Laptop",
    },
    {
      "iconname": Icons.phone,
      "title": "Phone",
    },
    {
      "iconname": Icons.electric_bike,
      "title": "Bike",
    },
    {
      "iconname": Icons.school,
      "title": "School",
    },
    {
      "iconname": Icons.card_giftcard_outlined,
      "title": "Gift",
    },
    {
      "iconname": Icons.electric_bike,
      "title": "Bike",
    },
  ];
  List items = [
    {
      "image": 'assets/images/watch.png',
      "title": "Lorem ipsum",
      "subTitle": "Lorem ipsum ipsum",
      "price": "350 \$",
    },
    {
      "image": 'assets/images/watch.png',
      "title": "Lorem ipsum",
      "subTitle": "Lorem ipsum ipsum",
      "price": "350 \$",
    },
    {
      "image": 'assets/images/watch.png',
      "title": "Lorem ipsum",
      "subTitle": "Lorem ipsum ipsum",
      "price": "350 \$",
    },
    {
      "image": 'assets/images/watch.png',
      "title": "Lorem ipsum",
      "subTitle": "Lorem ipsum ipsum",
      "price": "350 \$",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.menu,
                  size: 40,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 100,
            child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(40)),
                            ),
                            child: Icon(
                              categories[i]['iconname'],
                              size: 40,
                            )),
                        Text(
                          categories[i]['title'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Container(
            height: 30,
          ),
          const Text(
            "Best Sellings",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 300,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 250,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: items.length,
              itemBuilder: (context, i) {
                return Card(
                  color: Colors.white,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          color: Colors.grey[200],
                          padding: const EdgeInsets.all(30),
                          child: Image.asset(
                            items[i]["image"],
                            fit: BoxFit.fill,
                            height: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                items[i]["title"],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 1),
                              Text(
                                items[i]["subTitle"],
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                items[i]["price"],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
