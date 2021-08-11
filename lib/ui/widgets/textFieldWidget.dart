import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget{
  String lable;
  String hint;
  Icon icon = Icon(Icons.email_outlined);
  bool isPassword = false;
  TextEditingController controller;
  TextFieldWidget(this.lable, this.controller,this.hint,this.icon,[this.isPassword]);
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 340,
      height: 60,
      margin: EdgeInsets.only(right: 20 , top: 30,left: 20),
      child: TextFormField(
        autofocus: true,
        cursorColor: Colors.black87,
        obscureText: widget.isPassword ? isObsecure : false,
        controller: widget.controller,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),borderRadius: BorderRadius.circular(15),),
            prefixIcon: IconButton(
                icon: widget.icon ,
              ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            hintText: widget.hint,
            labelText: widget.lable,
            labelStyle: TextStyle(color: Colors.black87,fontSize: 18),
            fillColor: Colors.transparent,
            filled: true

        ),
      ),
    );
  }
}