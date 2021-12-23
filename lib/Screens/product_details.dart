import 'package:e_mart/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen( {Key? key, required this.model}) : super(key: key);
  final ProductModel model;


  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
   // final ProductDetailsArgument ar= ModalRoute.of(context)!.settings.arguments as ProductDetailsArgument;
    ProductModel model=widget.model;
    return Scaffold(
      appBar: AppBar(
        title: Text(model.productName),
        leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back_sharp,color: Colors.white,),),

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
                child: Image.asset(model.image,height: 100,width: 100,),
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
                          text: model.productDetails,style: TextStyle(
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

class ProductDetailsArgument{
  final ProductModel productModel;
  ProductDetailsArgument({required this.productModel});
}



