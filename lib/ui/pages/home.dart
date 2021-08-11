import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2_gsg/ui/widgets/courseWidget.dart';

class Home extends StatelessWidget {
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
                height: 30,
              ),
              Container(
                width: 340,
                height: 75,
                decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Color(0xffD1D1D1), blurRadius: 1.0, offset: Offset(0.0, 0.75))
                    ],
                    borderRadius: BorderRadius.circular(16), color: Colors.white,
                    // border: Border.all(color: Color(0xffD1D1D1))
                  ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hello',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xff636668)),
                        ),
                        Text(
                          'Will Smith',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff4D4F51)),
                        )
                      ],
                    ),
                    SizedBox(width: 170,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color(0xffD1D1D1))),
                      child: Image.asset('assests/img/profile-image.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 341,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text('Learn English',style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold,color: Color(0xff35383B)),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text('15 Coruses',style: TextStyle(color: Color(0xff505254),fontSize: 14,fontWeight: FontWeight.w400),),
                    SizedBox(width: 10,),
                    Icon(Icons.access_time,color: Color(0xff5F6061),),
                    Text('10:30:20',style: TextStyle(color: Color(0xff505254),fontSize: 14,fontWeight: FontWeight.w400),),
                  ],
                ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Image.asset('assests/img/course-progress.png'),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset('assests/img/Group1.png'),
                      Text('Beginners',style: TextStyle(color: Color(0xff505254),fontSize: 14,fontWeight: FontWeight.w400),),
                      Text('8 Coruses',style: TextStyle(color: Color(0xff6C7073),fontSize: 12,fontWeight: FontWeight.w400),),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assests/img/Group2.png'),
                      Text('intermediate',style: TextStyle(color: Color(0xff505254),fontSize: 14,fontWeight: FontWeight.w400),),
                      Text('15 Coruses',style: TextStyle(color: Color(0xff6C7073),fontSize: 12,fontWeight: FontWeight.w400),),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assests/img/Group3.png'),
                      Text('Advanced',style: TextStyle(color: Color(0xff505254),fontSize: 14,fontWeight: FontWeight.w400),),
                      Text('7 Coruses',style: TextStyle(color: Color(0xff6C7073),fontSize: 12,fontWeight: FontWeight.w400),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CourseWidget(),
                    CourseWidget(),
                    CourseWidget(),
                    CourseWidget(),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
