import 'package:e_mart/utils/text_style.dart';
import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  var errorList=[];

  addError(String?error){
    if(!errorList.contains(error)){
     setState(() {
       errorList.add(error);
     });
    }
  }

  removeError(String?error){
    if(errorList.contains(error)){
      setState(() {
        errorList.remove(error);
      });
    }
  }

  var categoryList=[
    "Select User Type",
    "student",
    "teacher",
    "farmer",
    "fisherman",
    "service holder"
  ];
  String dropDownvalue="Select User Type";
  String? password;
  String?cPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_sharp)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/undraw_design.png",
            height: 250,
            width: 300,),
            buildForm(),
          ],
        ),
      ),
    );
  }

  buildForm() {
    final key=GlobalKey<FormState>();

    return Form(
      key: key,
      child: Column(
        children: [
          TextFormField(
            onChanged: (value){
            },
            validator: (value){
              if(value!.isEmpty){
                addError(emailNullError);
                return "";
              }
              return null;
            },
            obscureText: false,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              hintText: "ex@gmail.com",
              labelText: "Email",
              contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
             Expanded(flex:6,child: TextFormField(
               obscureText: false,
               textInputAction: TextInputAction.next,
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.account_circle),
                 hintText: "ex.kamal",
                 labelText: "User Name",
                 contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(30),

                 ),
                 focusedBorder:OutlineInputBorder(
                   borderRadius: BorderRadius.circular(30),
                 ),
               ),
             )),
            SizedBox(width: 10,),
             Expanded(flex:3,child: DropdownButton(
               items: categoryList.map((e) {
                 return DropdownMenuItem(
                     value: e,
                     child: Text(e)
                 );
               }).toList(),
               value: dropDownvalue,
               onChanged: (String? newValue){
                 setState(() {
                   dropDownvalue=newValue!;
                 });
               },
             )),


            ],
          ),
          SizedBox(height: 10,),
          TextFormField(
            onChanged: (value){
              if(!value!.isEmpty){
                removeError(passwordNullError);
              }else if(value.length>=8){
                removeError(passwordIsTooShort);
              }
            },
            validator: (value){
              if(value!.isEmpty){
                addError(passwordNullError);
                return "";
              }else if(value.length<8){
                addError(passwordIsTooShort);
                return "";
              }
              return null;
            },
            obscureText: true,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_outline),
              hintText: "*****",
              labelText: "Password",
              contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(height: 10,),
          TextFormField(
            obscureText: true,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_outline),
              hintText: "*****",
              labelText: "Confirm Password",
              contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
         // buildErrorList(),
          SizedBox(height: 20,),
          ElevatedButton(style: ButtonStyle(

          ),
            onPressed: (){
            },
            child: Text("SignUp"),
          ),
        ],
      ),
    );
  }

  /*buildErrorList() {
    return Container(
      height: 30,
      width: 30,
      child:  List.generate(errorList.length, (index) {
        return Text(errorList[index]],);
      });,
    );
  }*/
}
