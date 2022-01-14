import 'package:flutter/material.dart';

class Pages2 extends StatelessWidget {
  const Pages2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 500,
        width: 500,
        child: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAnsE0UEF6eJVulnmwCPu3tc9tAe7y62zVMw&usqp=CAUhttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAnsE0UEF6eJVulnmwCPu3tc9tAe7y62zVMw&usqp=CAU',
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Text('Name      :    Dracaena fragrans   ',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      Text('price      :                \$45', style: TextStyle(fontSize: 18)),
    ]);
  }
}
