import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2_gsg/helper/db_helper.dart';
import 'package:project2_gsg/model/user.dart';
import 'package:project2_gsg/ui/pages/nav.dart';
import 'package:project2_gsg/ui/widgets/global.dart';
import 'package:project2_gsg/ui/widgets/textFieldWidget.dart';
import 'package:string_validator/string_validator.dart';
import 'choose_language.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String email ;

  String password;

  User user;

  saveForm() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return ChooseLanguage();
    }));
  }

  setUser(user) {
    this.user = user;
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  setEmail(String email) {
    this.email = email;
  }

  setPassword(String password) {
    this.password = password;
  }

  TextEditingController textEditingControllerEmail = TextEditingController();

  TextEditingController textEditingControllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff6BC7A6),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 71,
              ),
              Image.asset('assests/img/vector.png'),
              Container(
                height: 583,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  Container(
                    width: 340,
                    height: 60,
                    margin: EdgeInsets.only(right: 20 , top: 30,left: 20),
                    child: TextFormField(
                      onSaved: (v) {
                        setEmail(v);
                        user.email = email;
                      },
                      validator: (String value) {
                        if (value.length == 0) {
                          return 'Required Field';
                        } else if (!isEmail(value)) {
                          return 'Invalid Email Syntax';
                        }
                      },
                      autofocus: true,
                      cursorColor: Colors.black87,
                      obscureText: false,
                      controller: textEditingControllerEmail,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),borderRadius: BorderRadius.circular(15),),
                          prefixIcon: IconButton(
                            icon: Icon(Icons.email_outlined, color: Colors.black87 , size: 20,) ,
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          hintText: 'willsmith@iloveu.com',
                          labelText: 'Email ID',
                          labelStyle: TextStyle(color: Colors.black87,fontSize: 18),
                          fillColor: Colors.transparent,
                          filled: true

                      ),
                    ),
                  ),
                Container(
                  width: 340,
                  height: 60,
                  margin: EdgeInsets.only(right: 20 , top: 30,left: 20),
                  child: TextFormField(
                    onSaved: (v) {
                      setPassword(v);
                      user.password = password;
                    },
                    validator: (String value) {
                      if (value.length == 0) {
                        return 'Required Field';
                      } else if (value.length < 6) {
                        return 'the password must be larger than 6 lettres';
                      }
                    },
                    autofocus: true,
                    cursorColor: Colors.black87,
                    obscureText: true,
                    controller: textEditingControllerPassword,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),borderRadius: BorderRadius.circular(15),),
                        prefixIcon: IconButton(
                          icon: Icon(Icons.lock_outline, color: Colors.black87,size: 20,) ,
                        ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        hintText: '*********',
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.black87,fontSize: 18),
                        fillColor: Colors.transparent,
                        filled: true
                    ),
                  ),
                ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: EdgeInsets.only( right: 30,top: 5),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forget Password?',
                              style: TextStyle(color: Colors.black87, fontSize: 14),
                            )),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 30 , right: 20,left: 20),
                        width: 340,
                        height: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff6BC7A6),
                            shadowColor: Color(0xff6BC7A6),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)
                            ),
                          ),
                          onPressed: () async {
                            // Navigator.of(context).pushNamedAndRemoveUntil(
                            //     'newRoute', ModalRoute.withName('name'));
                            // var result = await Navigator.of(context).pushNamed('omar',
                            //     arguments: 'this is arguments from customer page');
                            // print(result);

                            if(formKey.currentState.validate()){
                              DBHelper.dbHelper.insertUser(user);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChooseLanguage()),
                              );
                            }
                            if (formKey.currentState.validate()) {
                              formKey.currentState.save();
                              User user =
                                  User(email: email, password: password);
                              Globals.globals.user = user;

                            }
                          },

                          // onPressed: () {
                          //   DBHelper.dbHelper.insertUser(user);
                          // Navigator.push(
                          // context,
                          // MaterialPageRoute(
                          // builder: (context) => ChooseLanguage()),
                          // );
                          // },
                          child: Text('LOGIN',style: TextStyle(fontSize: 16,fontWeight: FontWeight
                        .w400),)),
                    ),
                    SizedBox(height: 50,),
                    Text('Login with Social Media',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 159,
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Color(0xffE1E1E1)),
                            color: Color(0xffFBFBFB),
                          ),
                          child: TextButton(
                            onPressed: (){

                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assests/img/google.png',width: 20,height: 20,),
                                SizedBox(width: 10,),
                                Text('Google',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff505056)),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          width: 159,
                          height: 56,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Color(0xffE1E1E1)),
                              color: Color(0xffFBFBFB)
                          ),
                          child: TextButton(
                            onPressed: (){

                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assests/img/facebook.png',width: 33,height: 34,),
                                SizedBox(width: 10,),
                                Text('Facebook',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400 , color: Color(0xff505056)),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
