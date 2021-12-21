import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fresh Apple"),
        leading: Icon(Icons.arrow_back_sharp,color: Colors.white,),

      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Image.asset("assets/images/tshirt.png",height: 100,width: 100,),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.deepOrangeAccent[100]
                    ),
                    child: Image.asset("assets/images/wireless headset.png"),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        color: Colors.deepOrangeAccent[100]
                    ),
                    child: Image.asset("assets/images/wireless headset.png"),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        color: Colors.deepOrangeAccent[100]
                    ),
                    child: Image.asset("assets/images/wireless headset.png"),
                  ),



                ],
              ),
              SizedBox(height: 10,),
              RichText(
                  text: TextSpan(
                      text: "Description\n",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.lightBlue),
                      children: [
                        TextSpan(
                          text: "Filler text is text that shares some characteristics of a real written text, but is random or otherwise generated. It may be used to display a sample of fonts, generate text for testing, or to spoof an e-mail spam filter"
                              "Filler text is text that shares some characteristics of a real written text, but is random or otherwise generated. It may be used to display a sample of fonts, generate text for testing, or to spoof an e-mail spam filter"
                              "Filler text is text that shares some characteristics of a real written text, but is random or otherwise generated. It may be used to display a sample of fonts, generate text for testing, or to spoof an e-mail spam filter",style: TextStyle(
                          fontSize: 14,color: Colors.black54
                        )

                        )
                      ]
                  ))
            ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: (){},
        child: Text("Card"),
      ),
    );
  }
}
