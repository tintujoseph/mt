import 'package:flutter/material.dart';

class Pages4 extends StatelessWidget {
  const Pages4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 500,
        width: 500,
        child: Image.network(
          'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1623877401-medium-plant-spider-plant-seafoam-pot_2048x.jpg',
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Text('Name      :    Chlorophytum comosum   ',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      Text('price      :                \$45', style: TextStyle(fontSize: 18)),
    ]);
  }
}
