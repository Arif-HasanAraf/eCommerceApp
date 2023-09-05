import 'package:ecommerceapp/Authentcation/login.dart';
import 'package:ecommerceapp/Controller/auth_controller.dart';
import 'package:ecommerceapp/Widget/DimonsionSize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget{
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  var SignUpName = TextEditingController();
  var SignUpEmail = TextEditingController();
  var SignUpBD = TextEditingController();
  var SignUpPassword = TextEditingController();

  var controller = Get.put(AuthController);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemTeal,
      body: Center(
        child: SingleChildScrollView(
          child:
          Column(
            children: [
              Container(
                height: Dimonsion.v200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/tiger.png"),
                    )
                ),
              ),
              Container(
                color: Colors.transparent,
                height: Dimonsion.v600,
                width: Dimonsion.w400,
                child: Column(
                  children: [
                    //Heading
                    Container(
                      child: Text('Sign Up here, ', style: TextStyle(fontSize: 25),),
                    ),
                    Container(height: Dimonsion.v25),
                    // Enter Name
                    SizedBox(height: Dimonsion.v50, width: Dimonsion.w300,
                      child: TextField(
                        controller: SignUpName,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: " Full Name",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                color: Colors.indigo,
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                color: Colors.black12,
                                width: 2,
                              ),
                            ),
                            prefixIcon: IconButton(
                              icon: Icon(Icons.person), onPressed: (){
                            },
                            )

                        ),
                      ),
                    ),
                    Container(height: Dimonsion.v15),
                    // Enter Phone
                    SizedBox(height: Dimonsion.v50, width: Dimonsion.w300,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: SignUpEmail,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                                width: 2, color: Colors.indigo
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.black12,
                              )
                          ),
                          prefixIcon: IconButton(
                            icon: Icon(Icons.email_outlined),onPressed: (){
                          },
                          ),
                        ),
                      ),
                    ),
                    Container(height: Dimonsion.v15,),
                    // Enter Birthday
                    SizedBox(height: Dimonsion.v50,width: Dimonsion.w300,
                      child: TextField(
                        controller: SignUpBD,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                            hintText: 'Birth date',
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                                borderSide: BorderSide(
                                  color: Colors.indigo,
                                  width: 2,
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                                borderSide: BorderSide(
                                  color: Colors.black12,
                                  width: 2,
                                )
                            ),
                            prefixIcon: Icon(
                              Icons.calendar_month,
                            )
                        ),
                      ),
                    ),
                    Container(height: Dimonsion.v15,),
                    // Enter Password
                    SizedBox(height: Dimonsion.v50, width: Dimonsion.w300,
                      child: TextField(
                        controller: SignUpPassword,
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                            hintText: 'Password',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                color: Colors.indigo,
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                                borderSide: BorderSide(
                                  color: Colors.black12,
                                  width: 2,
                                )
                            ),
                            prefixIcon: IconButton(
                              icon: Icon(Icons.key), onPressed: (){

                            },
                            )
                        ),
                      ),
                    ),
                    Container(height: Dimonsion.v30,),
                    SizedBox(
                      height: Dimonsion.v50,
                      width: Dimonsion.w100,
                      child: ElevatedButton(onPressed: (){
                        String Sname = SignUpName.text;
                        String Sphone = SignUpName.text;
                        String Sbd = SignUpBD.text;
                        String Spassword = SignUpPassword.text;

                      }, child: Text('Sign Up')),
                    ),
                    SizedBox(height: Dimonsion.v15,),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(width: Dimonsion.w10,),
                          Text("Already have an account?"),
                          TextButton(onPressed: (){
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                            Get.to(()=>LoginPage());

                          }, child: Text("Login", style: TextStyle(fontWeight: FontWeight.w600),),),
                        ],
                      ),
                    ),
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