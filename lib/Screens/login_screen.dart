import 'package:e_mart/Screens/registration_page.dart';
import 'package:e_mart/utils/text_style.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Image.asset("assets/images/login_1.png",
            height: 300,
              width: 300,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "ex@gmail.com",
                label: Text("Email"),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),

            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                prefixIcon: Icon(Icons.lock_outline),
                hintText: "******",
                label: Text("Password"),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),

            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(onPressed: (){}, child:
            Text("Login")
            ),
            SizedBox(
              height: 20,
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Don't have account?",style: TextStyle(
                 fontSize: 18,
               ),),
               GestureDetector(
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUp()));
                 },
                 child: Text("Register",style: TextStyle(
                   fontSize: 18,
                   color: Colors.red,
                   fontWeight: FontWeight.bold
                 ),),
               )
             ],
           )
          ],
        ),
      ),
    );
  }
}
