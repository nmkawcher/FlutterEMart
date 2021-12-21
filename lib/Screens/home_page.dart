import 'package:e_mart/Screens/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String>imageList=[
    "assets/images/login_1.png",
    "assets/images/login_2.png",
    "assets/images/sign_up.png",
    "assets/images/undraw_design.png",
    "assets/images/undraw_messenger.png",
    "assets/images/Image Banner 2.png"
  ];
  bool isClick=false;

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("E-mart"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Image.asset("assets/images/Image Banner 2.png",
                  fit: BoxFit.fill,),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Categories",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 22,
                    ),),
                    GestureDetector(
                      onTap: (){
                        print("click");
                      },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(12)
                          ),
                            child: Text("See All",style: TextStyle(color: Colors.white),)
                        ))
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green
                      ),
                      child: Icon(Icons.camera_alt_outlined),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green
                      ),
                      child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green
                      ),
                      child: Icon(Icons.camera_alt_outlined),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green
                      ),
                      child: Icon(Icons.camera_alt_outlined),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green
                      ),
                      child: Icon(Icons.camera_alt_outlined),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green
                      ),
                      child: Icon(Icons.camera_alt_outlined),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green
                      ),
                      child: Icon(Icons.camera_alt_outlined),
                    ),


                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("New Arrivals",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 22,
                    ),),
                    GestureDetector(
                        onTap: (){
                          print("click");
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                            decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Text("See All",style: TextStyle(color: Colors.white),)
                        ))
                  ],
                ),
                SizedBox(height: 10,),
                Flexible(
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: imageList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0

                    ),
                    itemBuilder: (BuildContext context,int index){
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                          return  ProductDetailsScreen();
                          }));
                        },
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.green[400]
                          ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(imageList[index],height: 160,width: 190,fit: BoxFit.cover,),
                                      Positioned(
                                        right: 5,
                                        top: 5,
                                        child: isClick?Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Colors.white
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                                            child: IconButton(onPressed: (){
                                              setState(() {
                                                isClick=!isClick;
                                              });
                                            },icon:Icon(Icons.favorite,color: isClick?Colors.red:Colors.black)),
                                          ),
                                        ):IconButton(onPressed: (){setState(() {
                                          isClick=!isClick;
                                        });},icon:Icon(Icons.favorite,color:Colors.black)),
                                      ),
                                    ],
                                  ),
                                  Text("128 \$",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                  ElevatedButton(onPressed: (){}, child: Text("Cart")),
                                ],
                              ),
                            )
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
      ),


    );
  }
}
