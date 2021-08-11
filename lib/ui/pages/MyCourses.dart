import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2_gsg/ui/widgets/courseWidget.dart';

class MyCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 341,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Basic of english',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff35383B)),
                    ),
                    SizedBox(
                      height: 20,
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
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('assests/img/course-progress.png'),
              SizedBox(
                height: 20,
              ),
              CourseWidget(),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 340,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Basics of vocabulary (Voice only)',style: TextStyle(color: Color(0xff5D5D5E),fontSize: 14,fontWeight: FontWeight.w400),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                            child: Image.asset('assests/img/play-btn.png'),
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(child: Image.asset('assests/img/track.png'),
                        width: 180,
                          height: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('3:50',style: TextStyle(color: Color(0xff5D5D5E),fontSize: 14,fontWeight: FontWeight.w400))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 340,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assests/img/lesson-thumbnail.png'),
                    SizedBox(height: 10,),
                    Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('English grammar basics',style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w400,color: Color(0xff5D5D5E)),),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Icon(Icons.access_time,color: Color(0xff5F6061),),
                                Text('10:30:20',style: TextStyle(color: Color(0xff505254),fontSize: 14,fontWeight: FontWeight.w400),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
