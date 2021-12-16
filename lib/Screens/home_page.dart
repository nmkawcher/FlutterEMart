import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-mart"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 200,
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
          ],
        ),
      ),

    );
  }
}
