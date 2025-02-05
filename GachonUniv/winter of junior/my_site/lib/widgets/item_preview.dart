import 'package:flutter/material.dart';
import 'package:my_site/screens/detail_screen.dart';

class ItemPreview extends StatelessWidget {
  const ItemPreview({super.key});

  void sendToList(BuildContext context, Widget nextWidget) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => nextWidget));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: GestureDetector(
        onTap: () {
          sendToList(context, DetailScreen());
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 150,
              child: Image.asset('assets/logo.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('예시 '),
                SizedBox(
                  width: 80,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_shopping_cart_sharp),
                ),
              ],
            ),
            Text('100,000\$'),
          ],
        ),
      ),
    );
  }
}
