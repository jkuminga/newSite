import 'package:flutter/material.dart';
import 'package:my_site/screens/list_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: Builder(
              builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: Icon(Icons.menu))),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search)), // 그냥 화면 하나 만들어서 navigate
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 200,
                child: Image.asset('assets/logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        sendToList(context, ListScreen(menu: 'All'));
                      },
                      child: Text(
                        '전체',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        sendToList(context, ListScreen(menu: 'flower'));
                      },
                      child: Text(
                        '뜨개꽃',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        sendToList(context, ListScreen(menu: 'ETC'));
                      },
                      child: Text(
                        'ETC',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        sendToList(context, ListScreen(menu: 'Inquery'));
                      },
                      child: Text(
                        '문의',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  width: 280,
                  child: Image.asset('assets/example.png'),
                ),
              ),
              Text('@DODOMiii_MARKET'),
            ],
          ),
        ),
      ),
    );
  }
}
