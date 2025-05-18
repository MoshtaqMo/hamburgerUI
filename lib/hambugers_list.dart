import 'package:flutter/material.dart';
import 'package:hamburger/burger_page.dart';

class HamburgerList extends StatefulWidget {
  const HamburgerList({super.key});

  @override
  State<HamburgerList> createState() => _HamburgerListState();
}

class _HamburgerListState extends State<HamburgerList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;
    Widget baconImage=Container(
      height: 160,
      child: Image.asset("images/burger.png"),
    );
    Widget chickenImage=Container(
      height: 160,
      child: Image.asset("images/burger.png"),
    );
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 15),

        height: 250,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                    right: index == items ? 20 : 0,
                  ),
                  height: 250,
                  width: 200,

                  child: GestureDetector(
                    onTap: () {},
                    child: Card(
                      color: Colors.teal,
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(65),
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)
                      )
                    ),

                      child:  Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Text(
                              "Burger",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  "12.99 \$ CAN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.green.shade300,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                     Navigator.of(context).pushNamed('/burger'); 
 
                                    },
                                    icon: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -30,
                  child:GestureDetector(
                    onTap: (){

                    },
                    child: index.isEven ?chickenImage:baconImage,

                  ) 
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
