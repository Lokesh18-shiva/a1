import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool click = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: Drawer(
        width: 120,
      ),
      appBar: AppBar(automaticallyImplyLeading: false,),
      body: Row(
        children: [
          Drawer(
  width: click == true ? size.width * .215 : 0,
  child: AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    width: click == true ? size.width * .215 : 0,
    child: const Row(
      children: [
        SizedBox(
          child: Column(
            children: [
              Center(child: CircleAvatar()),
              Text("data")
            ],
          ),
        )
      ],
    ),
  ),
),

          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * .555,
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      click = !click;
                      if (click) {
                        _controller.reverse();
                      } else {
                        _controller.forward();
                      }
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      color: Colors.amber,
                    ),
                    height: 140,
                    width: 30,
                    child: Center(
                      child: Container(
                        height: 100,
                        width: 5,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],),
    );
  }
}
 