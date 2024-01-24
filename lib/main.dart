import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.grey,
        body: const SlideAnimation(),
      ),
    );
  }
}

class SlideAnimation extends StatefulWidget {
  const SlideAnimation({super.key});

  @override
  _SlideAnimationState createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation>
    with TickerProviderStateMixin {
  List<AssetImage> icons = [
    const AssetImage('assets/2.png'),
    const AssetImage('assets/3.png'),
    const AssetImage('assets/6.jpg'),
    const AssetImage('assets/4.png'),
    const AssetImage('assets/5.png'),
  ];
  List<String> name = ['iphone', 'android', 'earphones', 'watch', 'shoes'];
  double _left = 0.0;
  bool left = true;
  double _containerWidth = 0.0;
  late AnimationController _controller;
  bool click = false;
  var currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
  }

  void _onHorizontalDrag(DragUpdateDetails details) {
    setState(() {
      _left += details.delta.dx;

      if (_left < 0) {
        _left = 0;
      }
      if (details.delta.dx >= 0) {
        if (_containerWidth < MediaQuery.of(context).size.width - 4) {
          _containerWidth += details.delta.dx;

          if (_left > MediaQuery.of(context).size.width - _containerWidth &&
              left == true) {
            _left = MediaQuery.of(context).size.width - _containerWidth;
            _containerWidth = MediaQuery.of(context).size.width - 4;
            left = false;
          }
        }
      } else if (details.delta.dx <= 0) {
        if (_left < MediaQuery.of(context).size.width - _containerWidth) {
          // _left = MediaQuery.of(context).size.width - _containerWidth;
          _containerWidth = 89.0;
          left = true;
          if (_containerWidth == 89.0) {
            //  _containerWidth += details.delta.dx;
          }
        } else {
          _containerWidth += details.delta.dx;
        }
      }
      // else if (_left > MediaQuery.of(context).size.width - _containerWidth) {
      //   _left = MediaQuery.of(context).size.width - _containerWidth;
      //   if (left == true) {
      //     _containerWidth = MediaQuery.of(context).size.width;
      //     print(left);
      //     left = false;
      //   }
      //   //  else {
      //   //   _containerWidth += details.delta.dx;
      //   // }
      // }
      // else {
      //     if (_containerWidth < MediaQuery.of(context).size.width) {
      //       _containerWidth = _containerWidth += details.delta.dx;
      //       // if (_left == MediaQuery.of(context).size.width) {
      //       //   _containerWidth = MediaQuery.of(context).size.width;
      //       // }
      //     }
      //   }
    });
  }

  void _resetContainer(DragUpdateDetails details) {
    _controller.forward(from: 0.0);
    _controller.addListener(() {
      setState(() {
        _containerWidth = lerpDouble(_containerWidth, 0.0, _controller.value)!;
        if (_controller.isCompleted) {
          _controller.removeListener(() {});
          // _showDivider = false;
        }
      });
    });
  }
  // void _resetContainer(DragUpdateDetails details) {
  //   _controller.forward(from: 0.0);
  //   _controller.addListener(() {
  //     setState(() {
  //       _containerWidth = details.delta.dx;
  //     });
  //   });
  //   // _isSliding = false;
  // }

  // void _onHorizontalDragEnd(DragEndDetails details) {
  //   setState(() {
  //     if (_containerWidth > 100 &&
  //         _containerWidth < MediaQuery.of(context).size.width) {
  //       _containerWidth = 89.0;
  //     } else if (_containerWidth < 100 && _containerWidth == 89.0) {
  //       _containerWidth = 89.0;
  //     } else if (_containerWidth < 88.0) {
  //       _containerWidth = 0.0;
  //     }
  //   });
  // }

  Widget _buildContent() {
    Size size = MediaQuery.of(context).size;

    if (_containerWidth > 300.0) {
      return Stack(
        alignment: AlignmentDirectional.centerEnd,
        children: [
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemCount: icons.length,
            itemBuilder: (BuildContext context, int index) {
              print(size.aspectRatio * 90);
              return Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: SizedBox(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Image(
                          image: icons[index],
                          width: size.aspectRatio * 90,
                          height: size.aspectRatio * 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        name[index],
                        style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'TiltNeon'),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          // Padding(
          //   padding: EdgeInsets.only(top: size.height * .555),
          //   child: GestureDetector(
          //     onHorizontalDragUpdate: _resetContainer,
          //     child: Container(
          //       decoration: BoxDecoration(
          //           borderRadius: const BorderRadius.only(
          //             topLeft: Radius.circular(40),
          //             bottomLeft: Radius.circular(40),
          //           ),
          //           color: Colors.black38,
          //           border: Border.all(width: 2, color: Colors.white30)),
          //       height: 140,
          //       width: 20,
          //       child: Center(
          //         child: Container(
          //           height: 100,
          //           width: 2,
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(5),
          //               color: Colors.white),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      );
    } else {
      return ListView.builder(
          itemCount: icons.length,
          itemBuilder: ((context, index) {
            return AnimatedBuilder(
                animation: _controller,
                builder: ((context, child) {
                  double opacity = _containerWidth == 89.0 ? 1.0 : 0.2;
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, left: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                currentIndex = index;
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: SizedBox(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Opacity(
                                    opacity: opacity,
                                    child: ClipOval(
                                      child: Image(
                                        image: icons[index],
                                        width: size.aspectRatio * 90,
                                        height: size.aspectRatio * 90,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    _containerWidth == 89.0 ? name[index] : '',
                                    style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'TiltNeon'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 85, top: 10.0),
                        child: index == currentIndex &&
                                _containerWidth < size.width / size.width * 90
                            ? Container(
                                width: 5,
                                height: 110,
                                decoration: const BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10))),
                              )
                            : null,
                      )
                    ],
                  );
                }));
          }));
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: <Widget>[
        GestureDetector(
          onHorizontalDragUpdate:
              _containerWidth < 88.0 ? null : _onHorizontalDrag,
          // onHorizontalDragEnd: _onHorizontalDragEnd,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                color: Colors.white,
                height: double.infinity,
                width: _containerWidth,
                child: Center(
                  child: _buildContent(),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Container(
                height: size.height * .915,
                decoration:  BoxDecoration(
                    image: DecorationImage(
                        image: currentIndex==2? const AssetImage("assets/1.jpg"):const AssetImage("assets/2.png"), fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * .370),
                child: _containerWidth < size.width / size.width * 90
                    ? Container(
                        margin: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white.withOpacity(0.3),
                            border:
                                Border.all(width: 2, color: Colors.white30)),
                        height: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 16.0,
                                  right: 16.0,
                                  left: 16.0,
                                ),
                                child: Text(
                                  'Listen on your Own time',
                                  style: TextStyle(
                                      fontSize: 36,
                                      color: Colors.white,
                                      fontFamily: 'TiltNeon'),
                                  maxLines: 2,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, right: 16.0, left: 16.0),
                              child: Container(
                                width: 70,
                                height: 8,
                                decoration:
                                    BoxDecoration(color: Colors.grey[400]),
                              ),
                            ),
                            const SizedBox(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 8.0, right: 16.0, left: 16.0),
                                child: 
                                Text(
                                    'Headphones let a single user listen to an audio source privately, in contrast to a loudspeaker',
                                    maxLines: 3,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: 'TiltNeon')),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, left: 16.0),
                              child: GestureDetector(
                                  onTap: null,
                                  child: Container(
                                      width: 210,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2,
                                            color:
                                                Colors.white.withOpacity(0.3)),
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.grey,
                                      ),
                                      child:  Center(
                                        child: Text(
                                          name[currentIndex],
                                          style:const TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontFamily: 'TiltNeon'),
                                          maxLines: 2,
                                        ),
                                      ))),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 16.0),
                              child: SizedBox(
                                width: 100,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.black12,
                                      child: Icon(Icons.arrow_left_rounded),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.black12,
                                      child: Icon(Icons.arrow_right_rounded),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    : null,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * .100,
                ),
                child: GestureDetector(
                   onHorizontalDragUpdate: _onHorizontalDrag,
                  // onHorizontalDragEnd: _onHorizontalDragEnd,
                  onTap: () {
                    setState(() {
                      if (_containerWidth == 0.0) {
                        _containerWidth = 89.0;
                      } else {
                        _containerWidth = 0.0;
                      }
                    });
                  },
                  // onHorizontalDragEnd:
                  //      _onHorizontalDragEnd ,

                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                        color: Colors.black38,
                        border: Border.all(width: 2, color: Colors.white30)),
                    height: 140,
                    width: 20,
                    child: Center(
                      child: Container(
                        height: 100,
                        width: 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
