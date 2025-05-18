import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentSelectedItem=0;
  @override
  Widget build(BuildContext context) {
    int item=10;
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 15),
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:item ,
          itemBuilder:
              (context, index) => Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 90,width: 90,
                        margin: EdgeInsets.only(left: index==0?20:0, right: 8),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              currentSelectedItem=index;
                            });
                          },
                          child: Card(
                            color: index==currentSelectedItem?Colors.black.withOpacity(0.7):Colors.white,
                            child: Icon(Icons.fastfood,color: index==currentSelectedItem?Colors.white: Colors.black.withOpacity(0.7),),
                            elevation: 3,
                            margin: EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                      )
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
              margin: EdgeInsets.only(left: index==0?20:0,
              right: 10),
              width: 90,

              child: Row(
              children: [
                Spacer(),
                Text("Burger"),
                Spacer(),
              ],
            ),
            ))
            ]),
        ),
      ),
    );
  }
}
