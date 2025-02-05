import 'package:flutter/material.dart';
import 'package:my_site/screens/main_screen.dart';
import 'package:my_site/widgets/item_preview.dart';

class ListScreen extends StatelessWidget {
  final String menu;
  const ListScreen({
    super.key,
    required this.menu,
  });

  void sendToList(BuildContext context, Widget nextWidget) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => nextWidget));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
          ],
          leading: Builder(
              builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: Icon(Icons.menu))),
        ),
      ),
      drawer: Drawer(),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  sendToList(context, MainScreen());
                },
                child: SizedBox(
                  width: 200,
                  child: Image.asset('assets/logo.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  menu,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [ItemPreview(), ItemPreview()],
                  ),
                  Row(
                    children: [ItemPreview(), ItemPreview()],
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Text('@DODOMiii_MARKET'),
            ],
          ),
        ),
      ),
    );
  }
}
