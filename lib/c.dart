// import 'package:flutter/material.dart';

// appBar: click == false
//           ? AppBar(
//               title: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   const Icon(
//                     Icons.arrow_back,
//                     color: Colors.black,
//                   ),
//                   Chip(
//                     avatar: const Icon(Icons.local_mall, size: 17),
//                     label: Text(
//                       name[0],
//                       style: const TextStyle(fontSize: 14),
//                     ),
//                     elevation: 0,
//                   ),
//                   Chip(
//                     avatar: const Icon(Icons.shop, color: Colors.grey),
//                     label: Text(
//                       name[1],
//                       style: const TextStyle(fontSize: 14),
//                     ),
//                     elevation: 0,
//                   ),
//                   Chip(
//                     avatar: const Icon(Icons.attach_money, color: Colors.grey),
//                     label: Text(
//                       name[2],
//                       style: const TextStyle(fontSize: 14),
//                     ),
//                     elevation: 0,
//                   ),
//                 ],
//               ),
//               backgroundColor: Colors.white,
//               elevation: 0,
//             )
//           : null,





//           background 



//           Stack(
//                             children: [
//                               Container(
//                                 height: size.height * .915,
//                                 decoration: const BoxDecoration(
//                                     image: DecorationImage(
//                                         image: AssetImage("assets/1.jpg"),
//                                         fit: BoxFit.cover)),
//                               ),
//                               Padding(
//                                 padding:
//                                     EdgeInsets.only(top: size.height * .370),
//                                 child: Container(
//                                   margin: const EdgeInsets.all(12),
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       color: Colors.white.withOpacity(0.3),
//                                       border: Border.all(
//                                           width: 2, color: Colors.white30)),
//                                   height: 350,
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       const SizedBox(
//                                         child: Padding(
//                                           padding: EdgeInsets.only(
//                                             top: 16.0,
//                                             right: 16.0,
//                                             left: 16.0,
//                                           ),
//                                           child: Text(
//                                             'Listen on your Own time',
//                                             style: TextStyle(
//                                                 fontSize: 36,
//                                                 color: Colors.white,
//                                                 fontFamily: 'TiltNeon'),
//                                             maxLines: 2,
//                                           ),
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(
//                                             top: 8.0, right: 16.0, left: 16.0),
//                                         child: Container(
//                                           width: 70,
//                                           height: 8,
//                                           decoration: BoxDecoration(
//                                               color: Colors.grey[400]),
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         child: Padding(
//                                           padding: EdgeInsets.only(
//                                               top: 8.0,
//                                               right: 16.0,
//                                               left: 16.0),
//                                           child: Text(
//                                               'Headphones let a single user listen to an audio source privately, in contrast to a loudspeaker',
//                                               maxLines: 3,
//                                               style: TextStyle(
//                                                   fontSize: 18,
//                                                   color: Colors.white,
//                                                   fontFamily: 'TiltNeon')),
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(
//                                             top: 8.0, left: 16.0),
//                                         child: GestureDetector(
//                                             onTap: null,
//                                             child: Container(
//                                                 width: 210,
//                                                 height: 60,
//                                                 decoration: BoxDecoration(
//                                                   border: Border.all(
//                                                       width: 2,
//                                                       color: Colors.white
//                                                           .withOpacity(0.3)),
//                                                   borderRadius:
//                                                       BorderRadius.circular(8),
//                                                   color: Colors.grey,
//                                                 ),
//                                                 child: const Center(
//                                                   child: Text(
//                                                     'Listen on your Own time',
//                                                     style: TextStyle(
//                                                         fontSize: 18,
//                                                         color: Colors.black,
//                                                         fontFamily: 'TiltNeon'),
//                                                     maxLines: 2,
//                                                   ),
//                                                 ))),
//                                       ),
//                                       const Padding(
//                                         padding: EdgeInsets.only(top: 16.0),
//                                         child: SizedBox(
//                                           width: 100,
//                                           child: Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceEvenly,
//                                             children: [
//                                               CircleAvatar(
//                                                 backgroundColor: Colors.black12,
//                                                 child: Icon(
//                                                     Icons.arrow_left_rounded),
//                                               ),
//                                               CircleAvatar(
//                                                 backgroundColor: Colors.black12,
//                                                 child: Icon(
//                                                     Icons.arrow_right_rounded),
//                                               )
//                                             ],
//                                           ),
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),




//                           TabBar





//                           DefaultTabController(
//                             length: 3,
//                             child: Container(
//                               height: 100,
//                               color: Colors.black38,
//                               child: TabBar(isScrollable: true, tabs: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(top: 5),
//                                   child: Container(
//                                     width: 150,
//                                     height: 50,
//                                     margin: const EdgeInsets.all(20),
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(5),
//                                         color: Colors.black12),
//                                     child: const Center(
//                                       child: Text(
//                                         " name[index]",
//                                         style: TextStyle(
//                                             fontSize: 16,
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.bold,
//                                             fontFamily: 'TiltNeon'),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(top: 5),
//                                   child: Container(
//                                     width: 150,
//                                     height: 50,
//                                     margin: const EdgeInsets.all(20),
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(5),
//                                         color: Colors.black12),
//                                     child: const Center(
//                                       child: Text(
//                                         " name[index]",
//                                         style: TextStyle(
//                                             fontSize: 16,
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.bold,
//                                             fontFamily: 'TiltNeon'),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(top: 5),
//                                   child: Container(
//                                     width: 150,
//                                     height: 50,
//                                     margin: const EdgeInsets.all(20),
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(5),
//                                         color: Colors.black12),
//                                     child: const Center(
//                                       child: Text(
//                                         " name[index]",
//                                         style: TextStyle(
//                                             fontSize: 16,
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.bold,
//                                             fontFamily: 'TiltNeon'),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ]),
//                             ),
//                           ),










// drag container



//                            Padding(
//                     padding: EdgeInsets.only(
//                       top: size.height * .555,
//                     ),
//                     child: GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           click = !click;
//                           if (click) {
//                             _controller.reverse();
//                           } else {
//                             _controller.forward();
//                           }
//                         });
//                       },
//                       child: SlideTransition(
//                         position: Tween<Offset>(
//                           begin: Offset.zero,
//                           end: const Offset(1.5, 0.0),
//                         ).animate(CurvedAnimation(
//                           parent: _controller,
//                           curve: Curves.elasticIn,
//                         )),
//                         child: AnimatedContainer(
//                           duration: const Duration(milliseconds: 300),
//                           decoration: BoxDecoration(
//                               borderRadius: const BorderRadius.only(
//                                 topRight: Radius.circular(40),
//                                 bottomRight: Radius.circular(40),
//                               ),
//                               color: Colors.black38,
//                               border:
//                                   Border.all(width: 2, color: Colors.white30)),
//                           height: 140,
//                           width: 20,
//                           child: Center(
//                             child: Container(
//                               height: 100,
//                               width: 2,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5),
//                                   color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),








//                   conatiner 






//                    GestureDetector(
//             onHorizontalDragUpdate: _onHorizontalDrag,
//             child: AnimatedContainer(
//                 color: Colors.white,
//                 width:  containerWidth ,
//                 height: double.infinity,
//                 duration: const Duration(milliseconds: 300),
//                 child: ListView.builder(
//                     itemCount: icons.length,
//                     itemBuilder: ((context, index) {
//                       return AnimatedBuilder(
//                           animation: _controller,
//                           builder: ((context, child) {
//                             return Stack(
//                               children: [
//                                 Padding(
//                                   padding:
//                                       const EdgeInsets.only(top: 16.0, left: 8.0),
//                                   child: GestureDetector(
//                                     onTap: () {
//                                       setState(
//                                         () {
//                                           currentIndex = index;
//                                         },
//                                       );
//                                     },
//                                     child: Padding(
//                                       padding: const EdgeInsets.only(top: 6.0),
//                                       child: SizedBox(
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.center,
//                                           children: [
//                                             CircleAvatar(
//                                               radius: size.aspectRatio * 60,
//                                               backgroundImage: icons[index],
//                                             ),
//                                             const SizedBox(height: 10),
//                                             Text(
//                                               name[index],
//                                               style: const TextStyle(
//                                                   fontSize: 14,
//                                                   color: Colors.black,
//                                                   fontWeight: FontWeight.bold,
//                                                   fontFamily: 'TiltNeon'),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.only(
//                                       left: size.width * .205, top: 10.0),
//                                   child: index == currentIndex
//                                       ? Container(
//                                           width: 5,
//                                           height: 110,
//                                           decoration: const BoxDecoration(
//                                               color: Colors.purple,
//                                               borderRadius: BorderRadius.only(
//                                                   topLeft: Radius.circular(10),
//                                                   bottomLeft:
//                                                       Radius.circular(10))),
//                                         )
//                                       : null,
//                                 )
//                               ],
//                             );
//                           }));
//                     }))),
//           ),