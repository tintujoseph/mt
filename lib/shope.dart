import 'package:flutter/material.dart';
import 'package:shopping/page.dart';
import 'package:shopping/page2.dart';
import 'package:shopping/page3.dart';
import 'package:shopping/page4.dart';

class Shops extends StatelessWidget {
  const Shops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[200],
        bottomNavigationBar: Container(
          height: 36,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            buildicon(Icons.home),
            buildicon(Icons.favorite),
            buildicon(Icons.person, Isselected: true),
            buildicon(Icons.shopping_cart),
            buildicon(Icons.settings)
          ]),
        ),
        appBar: AppBar(
            backgroundColor: Colors.green[300],
            elevation: 0,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search, color: Colors.black),
                onPressed: () {},
              )
            ]),
        body: Column(children: [
          SizedBox(width: 35),
          Row(
            children: const [
              Text(
                'Shop',
                style: TextStyle(fontSize: 26),
              ),
              Text(
                'Plants',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              flatbutton('Plants', isSelected: true),
              flatbutton('Trees')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(height: 32),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildcolum('InDoor', isSelected: true),
                              buildcolum('OutDoor'),
                            ]),
                        SizedBox(
                          height: 15,
                          width: 20,
                        ),
                        SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return Pages();
                                    }));
                                  },
                                  child: Column(children: [
                                    SizedBox(width: 7),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      height: 150,
                                      width: 150,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.network(
                                            'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1623958717-the-sill_anthurium-pink_variant_small_bryant_blush_1440x.jpg',
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text('Painter s-palette',
                                        style: TextStyle(fontSize: 18)),
                                    Text('\$34', style: TextStyle(fontSize: 17))
                                  ]),
                                ),
                                SizedBox(width: 10),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return Pages2();
                                    }));
                                  },
                                  child: Column(children: [
                                    Container(
                                      height: 150,
                                      width: 150,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.network(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAnsE0UEF6eJVulnmwCPu3tc9tAe7y62zVMw&usqp=CAUhttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAnsE0UEF6eJVulnmwCPu3tc9tAe7y62zVMw&usqp=CAU',
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text('Dracaena fragrans',
                                        style: TextStyle(fontSize: 18)),
                                    Text('\$45',
                                        style: TextStyle(fontSize: 17)),
                                  ]),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return Pages3();
                                    }));
                                  },
                                  child: Column(children: [
                                    Container(
                                      height: 150,
                                      width: 150,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.network(
                                            'https://5.imimg.com/data5/SELLER/Default/2021/1/YU/QA/DG/14028553/indoor-plants-500x500.jpg',
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text('  Dieffenbachia \n amoena',
                                        style: TextStyle(fontSize: 18)),
                                    Text('\$50', style: TextStyle(fontSize: 18))
                                  ]),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return Pages4();
                                    }));
                                  },
                                  child: Column(children: [
                                    Container(
                                      height: 150,
                                      width: 150,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.network(
                                            'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1623877401-medium-plant-spider-plant-seafoam-pot_2048x.jpg',
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text('  Chlorophytum comosum',
                                        style: TextStyle(fontSize: 18)),
                                    Text('\$45', style: TextStyle(fontSize: 17))
                                  ]),
                                )
                              ],
                            )),
                        Container(
                          width: 400,
                          height: 7,
                          margin: EdgeInsets.only(left: 15),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: Colors.green[50],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20))),
                          child: Container(
                              height: 5,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20)))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(children: [
                            Text('Holyday special',
                                style: TextStyle(fontSize: 17)),
                            Spacer(),
                            Text('Value', style: TextStyle(fontSize: 17))
                          ]),
                        ),
                        Row(children: [
                          newMethod(),
                          Spacer(),
                          newMethod(),
                        ])
                      ],
                    ),
                  )))
        ]));
  }

  Container buildicon(IconData icon, {Isselected = false}) {
    return Container(
        decoration: BoxDecoration(
          color: Isselected ? Colors.green[200] : Colors.white,
          shape: BoxShape.circle,
        ),
        height: 50,
        width: 40,
        child: Icon(icon, color: Isselected ? Colors.white : Colors.black));
  }

  Container newMethod() {
    return Container(
      height: 120,
      width: 200,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 160,
              child: Image.network(
                'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1623877401-medium-plant-spider-plant-seafoam-pot_2048x.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(' comosum',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Spacer(),
            Text('\$45', style: TextStyle(fontSize: 18)),
          ])
        ],
      ),
    );
  }

  Container Columbuild() {
    return Container(
      height: 110,
      width: 300,
      margin: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 160,
              child: Image.network(
                'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1623877401-medium-plant-spider-plant-seafoam-pot_2048x.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Chlorophytum comosum',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Spacer(),
            Text('\$45', style: TextStyle(fontSize: 18)),
          ])
        ],
      ),
    );
  }

  Column buildcolum(String title, {bool isSelected = false}) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(color: isSelected ? Colors.black : Colors.grey),
        ),
        if (isSelected)
          Container(
              height: 5,
              width: 5,
              decoration:
                  BoxDecoration(color: Colors.black, shape: BoxShape.circle))
      ],
    );
  }

  FlatButton flatbutton(String text, {bool isSelected = false}) {
    return FlatButton(
        onPressed: () {
          print('button');
        },
        child: Text(text,
            style: TextStyle(
              fontSize: 18,
              color: isSelected ? Colors.white : Colors.black45,
            )),
        shape: StadiumBorder(),
        color: isSelected ? Colors.lightGreenAccent : Colors.grey);
  }
}
