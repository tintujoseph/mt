import 'package:flutter/material.dart';

class Shops extends StatelessWidget {
  const Shops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[400],
        bottomNavigationBar: BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
              ),
              Expanded(
                child: IconButton(onPressed: () {}, icon: Icon(Icons.note)),
              ),
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green[200], shape: BoxShape.circle),
                      child: IconButton(
                          onPressed: () {
                            showBottom(context);
                          },
                          icon: Icon(Icons.add)))),
              Expanded(
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.bar_chart_outlined)),
              ),
              Expanded(
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.account_balance)),
              ),
            ],
          ),
        ),
        appBar: AppBar(
            backgroundColor: Colors.green[400],
            elevation: 0,
            title: Icon(Icons.money),
            actions: [Icon(Icons.notifications)]),
        body: Container(
            color: Colors.green[400],
            child: Column(children: [
              SizedBox(width: 35),
              SizedBox(
                height: 50,
              ),
              Column(children: [
                Row(children: [
                  Text(
                    '    OCTOBER ',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Text('   2020',
                      style: TextStyle(color: Colors.white, fontSize: 22))
                ]),
                SizedBox(height: 20),
                Container(
                  color: Colors.white,
                  height: 170,
                  width: 450,
                  child: Column(children: [
                    ListTile(
                      title: const Text("Net Asset (INR)"),
                    ),
                    ListTile(
                        leading: const Icon(Icons.show_chart),
                        title: const Text("Rs. 100,000.00"),
                        trailing: Icon(Icons.panorama_fish_eye)),
                    ListTile(
                      leading: Text('assets'),
                      title: const Text("Rs. 100,000.00"),
                      trailing: const Text("  Laibalites Rs. 100,000.00"),
                    )
                  ]),
                )
              ]),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.only(top: 30),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('INCOME'),
                              Text('SPENT'),
                              Text('DEBIT'),
                            ]),
                        SizedBox(height: 10),
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
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20))))),
                        SizedBox(
                          height: 80,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(children: [
                              Text('RS.50,000'),
                              Text('Planned income')
                            ]),
                            SizedBox(
                              width: 100,
                            ),
                            Column(
                              children: [
                                Text('RS.50,000'),
                                Text('Planned income')
                              ],
                            )
                          ],
                        )
                      ])))
            ])));
  }

  Future<void> showBottom(BuildContext context) async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              padding: EdgeInsets.all(20),
              child: Column(children: [
                ListTile(
                  leading: Text('Income',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
                  trailing: Text('Done',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.green)),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                    title: Text(' Add amount'),
                    subtitle: Container(
                      height: 50,
                      width: 350,
                      color: Colors.grey[200],
                    )),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Shops();
                      }));
                    },
                    child: Container(
                        height: 50,
                        width: 350,
                        color: Colors.green[400],
                        child: Text('Add Now',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w100,
                                color: Colors.green),
                            textAlign: TextAlign.center))),
              ]));
        });
  }
}
