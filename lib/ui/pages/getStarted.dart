import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2_gsg/ui/pages/choose_language.dart';
import 'package:project2_gsg/ui/pages/nav.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  String cat = languages[0].name;
  static List<Lang> languages = [
    Lang(name: 'English', img: 'assests/img/flag.png'),
    Lang(name: 'Arabic', img: 'assests/img/flagArabic.png'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 71,
            ),
            Image.asset('assests/img/vector.png'),
            SizedBox(
              height: 20,
            ),
            Text(
              'WELCOME TO THE\nLANGUAGE WORLD',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua. Ut\nenim ad minim veniam,',
              style: TextStyle(fontSize: 16, color: Color(0xff6A6E71)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 30, right: 20, left: 20),
              width: 340,
              height: 60,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(16)),
              child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                      labelText: 'Choose language for app',
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(16.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      )),
                  value: cat,
                  onChanged: (v) {
                    cat = v;
                    setState(() {});
                  },
                  // items: languages.map((e){
                  //   return DropdownMenuItem(child: Text(e.name + e.img) , value: e);
                  // }).toList()
                  items: [
                    DropdownMenuItem(
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Image.asset(
                              languages[0].img,
                              width: 30,
                              height: 30,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text(languages[0].name),
                        ],
                      ),
                      value: languages[0].name,
                    ),
                    DropdownMenuItem(
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Image.asset(
                              languages[1].img,
                              width: 30,
                              height: 30,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text(languages[1].name),
                        ],
                      ),
                      value: languages[1].name,
                    ),

                    // DropdownMenuItem(child: Text('Arabic'),value: 'Arabic',),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 30, right: 20, left: 20),
              width: 340,
              height: 60,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(16)),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff6BC7A6),
                    shadowColor: Color(0xff6BC7A6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Nav()),
                    );
                  },
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
