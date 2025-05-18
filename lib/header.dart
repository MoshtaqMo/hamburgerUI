import 'package:flutter/material.dart';

class HeaderPage extends StatefulWidget {
  const HeaderPage({super.key});

  @override
  State<HeaderPage> createState() => _HeaderPageState();
}

class _HeaderPageState extends State<HeaderPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate([
        Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  height: size.height / 6,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(35),
                    ),
                    boxShadow: [BoxShadow(blurRadius: 4)],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("images/profile.jpg"),
                            radius: 35,
                          ),
                          Column(
                            children: [
                              Text("Wanted Jack",style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20
                              ),),
                              Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Text("Gold Member",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),)),
                            ],
                          ),
                          Spacer(),
                          Text("154 \$ CAN",style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20
                              ),)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: -9,
              left: 8,
              right: 8,
              child: Container(
                height: 50,
                width: size.width,
                child: Card(
                  elevation: 3,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "What does your belly want to eat?",
                      suffixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),

                      
                      
                    ),
                  ),
                ),
              ),
            )
          ]
        ),
      ]),
    );
  }
}
