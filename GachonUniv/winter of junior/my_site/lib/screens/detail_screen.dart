import 'package:flutter/material.dart';
import 'package:my_site/screens/main_screen.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

void navigator(BuildContext context, Widget nextWidget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => nextWidget));
}

class _DetailScreenState extends State<DetailScreen> {
  final colors = ['(필수)색상을 선택해주세요!', '빨간색', '파란색', '노란색'];
  final options = ['(필수)옵션을 선택해주세요!', '꽃 추가(+5000)', '드라이아이스 추가(+1000)'];
  String _selectedColor = '';
  String _selectedOption = '';

  @override
  void initState() {
    setState(() {
      _selectedColor = colors[0];
      _selectedOption = options[0];
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Builder(
              builder: (context) => IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  )),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
          ],
        ),
      ),
      drawer: Drawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  navigator(context, MainScreen());
                },
                child: SizedBox(
                  width: 160,
                  child: Image.asset('assets/logo.png'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/example.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '예시(주문제작)',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '90,000원',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('색상'),
                    SizedBox(width: 20),
                    DropdownButton(
                      value: _selectedColor,
                      items: colors
                          .map(
                              (e) => DropdownMenuItem(value: e, child: Text(e)))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedColor = value!;
                        });
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('옵션'),
                    SizedBox(width: 20),
                    DropdownButton(
                      value: _selectedOption,
                      items: options
                          .map(
                              (e) => DropdownMenuItem(value: e, child: Text(e)))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '주문하기',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      '문의하기',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text('@DODOMiii_MARKET'),
            ],
          ),
        ),
      ),
    );
  }
}
