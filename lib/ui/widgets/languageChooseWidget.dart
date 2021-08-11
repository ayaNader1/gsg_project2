import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2_gsg/ui/pages/choose_language.dart';

class ChooseLanguageWidget extends StatefulWidget {
  String img;
  String name;
  LangChoose langChoose = LangChoose.English;
  ChooseLanguageWidget({this.img, this.name,this.langChoose});

  @override
  _ChooseLanguageWidgetState createState() => _ChooseLanguageWidgetState();
}

class _ChooseLanguageWidgetState extends State<ChooseLanguageWidget> {
  LangChoose groupValue;
  String isLangChoose = 'English';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextButton(
      onPressed: () {
        isLangChoose = widget.name;
        setState(() {});
        print(isLangChoose);
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            decoration: BoxDecoration(boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 2.0,
                  offset: Offset(0.0, 0.75))
            ], color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: Image.asset(
                      widget.img ?? 'assests/img/flag.png',
                      width: 61,
                      height: 32,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.name ?? "English",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: -5,
              child: Align(
            alignment: Alignment.topCenter,
            child: Visibility(
              visible: isLangChoose == widget.name,
              child: Image.asset('assests/img/selected.png')
              // child: Radio(
              //     value: widget.langChoose,
              //     groupValue: groupValue,
              //     onChanged: (v) {
              //       this.groupValue = v;
              //       setState(() {});
              //     }),
            ),
          ))
        ],
      ),
    );
  }
}
