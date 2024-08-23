import 'package:flutter/material.dart';
import 'package:loginapplication/productdetail_screen/productdetail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List DataList = [
      {
        "image":
            "https://images.pexels.com/photos/1785779/pexels-photo-1785779.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Casual Shirt",
        "price": "INR 3026"
      },
      {
        "image":
            "https://images.pexels.com/photos/26336891/pexels-photo-26336891/free-photo-of-studio-shot-of-an-elegant-man-in-a-suit.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Formal Suit",
        "price": "INR 7599"
      },
      {
        "image":
            "https://images.pexels.com/photos/1124468/pexels-photo-1124468.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Leather Jacket",
        "price": "INR 8999"
      },
      {
        "image":
            "https://images.pexels.com/photos/1018911/pexels-photo-1018911.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Denim Jeans",
        "price": "INR 2599"
      },
      {
        "image":
            "https://images.pexels.com/photos/1280064/pexels-photo-1280064.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Sneakers",
        "price": "INR 3299"
      },
      {
        "image":
            "https://images.pexels.com/photos/2155319/pexels-photo-2155319.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Wristwatch",
        "price": "INR 4999"
      },
      {
        "image":
            "https://images.pexels.com/photos/1043473/pexels-photo-1043473.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Sunglasses",
        "price": "INR 1899"
      },
      {
        "image":
            "https://images.pexels.com/photos/1693115/pexels-photo-1693115.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Sports Shoes",
        "price": "INR 4599"
      },
      {
        "image":
            "https://images.pexels.com/photos/1478476/pexels-photo-1478476.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Backpack",
        "price": "INR 2399"
      },
      {
        "image":
            "https://images.pexels.com/photos/27045991/pexels-photo-27045991/free-photo-of-young-man-wearing-white-polo-shirt-and-gray-suit-trousers-leaning-against-concrete-column.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Leather Belt",
        "price": "INR 999"
      },
      {
        "image":
            "https://images.pexels.com/photos/5480697/pexels-photo-5480697.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Hoodie",
        "price": "INR 1999"
      },
      {
        "image":
            "https://images.pexels.com/photos/1656684/pexels-photo-1656684.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "T-Shirt",
        "price": "INR 899"
      },
      {
        "image":
            "https://images.pexels.com/photos/1143503/pexels-photo-1143503.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Running Shoes",
        "price": "INR 3299"
      },
      {
        "image":
            "https://images.pexels.com/photos/3757051/pexels-photo-3757051.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Hat",
        "price": "INR 799"
      },
      {
        "image":
            "https://images.pexels.com/photos/6303491/pexels-photo-6303491.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Slim Fit Shirt",
        "price": "INR 1899"
      },
      {
        "image":
            "https://images.pexels.com/photos/894156/pexels-photo-894156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Jeans Jacket",
        "price": "INR 3499"
      },
      {
        "image":
            "https://images.pexels.com/photos/2983467/pexels-photo-2983467.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Cargo Pants",
        "price": "INR 1799"
      },
      {
        "image":
            "https://images.pexels.com/photos/19499707/pexels-photo-19499707/free-photo-of-casual-style-boy-in-flipflops.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Flip Flops",
        "price": "INR 599"
      },
      {
        "image":
            "https://images.pexels.com/photos/4393417/pexels-photo-4393417.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Leather Gloves",
        "price": "INR 1299"
      },
      {
        "image":
            "https://images.pexels.com/photos/1040880/pexels-photo-1040880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "proname": "Beanie",
        "price": "INR 499"
      }
    ];

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          title: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text(
              "Discover",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 10),
              child: Stack(
                children: [
                  Icon(
                    Icons.notifications_outlined,
                    size: 40,
                    color: Colors.black,
                  ),
                  Positioned(
                    right: 0,
                    top: 1,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.black,
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 35,
                          ),
                          Text(
                            "Search anything",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_list,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              scrollDirection: Axis.horizontal,
              child: OverflowBar(
                spacing: 15,
                children: [
                  MaterialButton(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text(
                      "All",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text(
                      "Men",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text(
                      "Women",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text(
                      "Kids",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1 / 2,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) => Container(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductdetailScreen(),
                              ));
                        },
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                DataList[index]["image"],
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 30,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            DataList[index]["proname"],
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 18),
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            DataList[index]["price"],
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.grey),
                          )),
                    ],
                  ),
                ),
                itemCount: DataList.length,
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              children: [
                Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
                Text(
                  "Home",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: [
                Icon(Icons.favorite_border),
                Text("Saved"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.shopping_bag_outlined),
                Text("Cart"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.settings_outlined),
                Text("Settings"),
              ],
            ),
          ]),
        ));
  }
}
