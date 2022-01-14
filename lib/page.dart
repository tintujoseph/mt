import 'package:flutter/material.dart';

class Pages extends StatelessWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 500,
        width: 500,
        child: Image.network(
          'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1623958717-the-sill_anthurium-pink_variant_small_bryant_blush_1440x.jpg',
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Text('Name      :             Painter s-palette',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      Text('price      :                \$50', style: TextStyle(fontSize: 18)),
    ]);
  }
}
