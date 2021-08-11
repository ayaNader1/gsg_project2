import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2_gsg/ui/widgets/languageChooseWidget.dart';
import 'package:search_page/search_page.dart';
import 'getStarted.dart';

enum LangChoose { English, Arabic, Spanish, Russia, Japanese, Hindi }

class Lang {
  final String name, img;
  LangChoose langChoose;
  Lang({this.name, this.img, this.langChoose});
}

class ChooseLanguage extends StatefulWidget {
  static List<Lang> languages = [
    Lang(
        name: 'English',
        img: 'assests/img/flag.png',
        langChoose: LangChoose.English),
    Lang(
        name: 'Spanish',
        img: 'assests/img/flagSpanish.png',
        langChoose: LangChoose.Spanish),
    Lang(
        name: 'Russia',
        img: 'assests/img/flagRussia.png',
        langChoose: LangChoose.Russia),
    Lang(
        name: 'Arabic',
        img: 'assests/img/flagArabic.png',
        langChoose: LangChoose.Arabic),
    Lang(
        name: 'Japanese',
        img: 'assests/img/flagJabans.png',
        langChoose: LangChoose.Japanese),
    Lang(
        name: 'Hindi',
        img: 'assests/img/flagHindi.png',
        langChoose: LangChoose.Hindi),
  ];

  @override
  _ChooseLanguageState createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  Lang lang;
  LangChoose geoupValue;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xffF4F4F4),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Choose your language \nyou want to learn',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 341,
                height: 60,
                alignment: Alignment.center,
                child: TextField(
                  onTap: () => showSearch(
                    context: context,
                    delegate: SearchPage<Lang>(
                      onQueryUpdate: (s) => print(s),
                      items: ChooseLanguage.languages,
                      searchLabel: 'Search Language',
                      suggestion: Center(
                        child: Text('Filter language by language name'),
                      ),
                      failure: Center(
                        child: Text('No Language found :('),
                      ),
                      filter: (person) => [
                        person.name,
                      ],
                      builder: (lang) => ListTile(
                        title: Text(lang.name),
                      ),
                    ),
                  ),
                  cursorColor: Color(0xff626569),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Search the Language…',
                      suffixIcon: Icon(
                        Icons.search,
                        color: Color(0xff626569),
                      )),
                ),
              ),
              GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 175,
                    mainAxisExtent: 140,
                  ),
                  itemCount: ChooseLanguage.languages.length,
                  itemBuilder: (BuildContext context, int index) {
                    // return Container(
                    //   margin: EdgeInsets.all(10),
                    //   child: Card(
                    //     color: Colors.white,
                    //     child: Center(child: Text('$index')),
                    //   ),
                    // );
                    return ChooseLanguageWidget(
                      img: ChooseLanguage.languages[index].img,
                      name: ChooseLanguage.languages[index].name,
                      langChoose: ChooseLanguage.languages[index].langChoose,
                    );
                  }),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                width: 341,
                height: 83,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(
                      Icons.help_outline,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Did’t See the Language",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text("We are avilable 24/7 for your help",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff6A6E71))),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Color(0xff868686),
                    )
                  ],
                ),
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
                        MaterialPageRoute(builder: (context) => GetStarted()),
                      );
                    },
                    child: Text(
                      'NEXT',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
