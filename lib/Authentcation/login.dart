import 'package:ecommerceapp/Authentcation/signup.dart';
import 'package:ecommerceapp/HomeScreen.dart';
import 'package:ecommerceapp/Widget/DimonsionSize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemTeal,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: Dimonsion.v200,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/tiger.png"),
              ),
            ),
            SizedBox(height: Dimonsion.v70,),
            SizedBox(
              height: Dimonsion.v50,
              width: Dimonsion.w300,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: Icon(Icons.email), onPressed: (){
                      print("Enter you email");
                    },
                    ),
                    hintText: AutofillHints.email,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 1,
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 1,
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: Dimonsion.v30,),
            SizedBox(height: Dimonsion.v50, width: Dimonsion.w300,
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'password',
                  prefixIcon: IconButton(
                    icon: Icon(Icons.key),onPressed:() {
                  },
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Colors.indigo,
                      width: 3,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 1,
                      )
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: Dimonsion.w240,),
                TextButton(onPressed: (){
                }, child: Text("forget password?")),
              ],
            ),
            SizedBox(
              height: Dimonsion.v50,
              width: Dimonsion.w100 + 20,
              child: ElevatedButton(
                onPressed: (){
                  Get.to(()=>HomePage());

                }, child:Text("Login"), ),
            ),
            SizedBox(height: Dimonsion.v30,),
            TextButton(
              onPressed: (){
              },
              child: Row(
                children: [
                  SizedBox(width: Dimonsion.w50,),
                  Container(
                    height: Dimonsion.v50,
                    width: Dimonsion.w280,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all()
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: Dimonsion.w10,),
                        Container(
                          height: Dimonsion.v40,
                          width: Dimonsion.w40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/google.png")
                              )
                          ),
                        ),
                        SizedBox(width: Dimonsion.w10,),
                        Text("Signin-with-google", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimonsion.v10,),
            Row(
              children: [
                SizedBox(width: Dimonsion.w60,),
                Text("Don't have an account? "),
                SizedBox(width: Dimonsion.w5,),
                TextButton(onPressed: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                  Get.to(()=> SignUp());
                }, child: Text("Signup"))

              ],),
          ],
        ),
      ),
    );
  }
}
