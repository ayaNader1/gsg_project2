import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Most popular courses',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
          SizedBox(height: 20,),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10,right: 10),
                width: 302,
                height: 290,
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color(0xffD1D1D1),
                        blurRadius: 1.0,
                        offset: Offset(0.0, 0.75))
                  ],
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffF0F2F9),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xffF2954E),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Color(0xffD1D1D1),
                                  blurRadius: 1.0,
                                  offset: Offset(0.0, 0.75))
                            ],
                          ),
                          child: Icon(
                            Icons.repeat,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Color(0xffD1D1D1),
                                  blurRadius: 1.0,
                                  offset: Offset(0.0, 0.75))
                            ],
                          ),
                          child: Icon(
                            Icons.favorite_border,
                            color: Color(0xff6D6E71),
                          ),
                        ),
                        SizedBox(width: 120,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Color(0xffD1D1D1),
                                  blurRadius: 1.0,
                                  offset: Offset(0.0, 0.75))
                            ],
                          ),
                          child: Icon(
                            Icons.download_sharp,
                            color: Color(0xff6D6E71),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 302,
                  height: 223,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffFBFBFB),
                  ),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        height: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Basics of english",
                              style: TextStyle(
                                  color: Color(0xff35383B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  '10 Lessons',
                                  style: TextStyle(
                                      color: Color(0xff505254),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.access_time,
                                  color: Color(0xff5F6061),
                                ),
                                Text(
                                  '1:30:20',
                                  style: TextStyle(
                                      color: Color(0xff505254),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
              )),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    Container(
                      width: 302,
                      height: 139,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        // color: Colors.red,
                      ),
                      child: Image.asset('assests/img/Course-image.png'),
                    ),
                    Positioned.fill(
                        child: Center(
                      child: ElevatedButton(
                        child: Image.asset('assests/img/play.png'),
                      ),
                    )),
                  ],
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
