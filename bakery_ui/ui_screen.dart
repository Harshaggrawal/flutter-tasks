import 'package:flutter/material.dart';

class BakeryApp extends StatefulWidget {
  const BakeryApp({Key? key}) : super(key: key);

  @override
  State<BakeryApp> createState() => _BakeryAppState();
}

class _BakeryAppState extends State<BakeryApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: const Text(
          'Best bakery',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
        
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.grey,
            
          )
        ],
      ),
      body: ListView(
        
        children: [
        
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 250.0,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 230,
                              width: MediaQuery.of(context).size.width -
                                  MediaQuery.of(context).size.width / 3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/OIP.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              left: 15.0,
                              top: 130.0,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'strawberry cake',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Rs. 650',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(width: 6.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(8.0),
                          elevation: 2.0,
                          child: SizedBox(
                            width: 60.0,
                            height: 60.0,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(8.0),
                          
                            // ),
                            child: Column(
                              children: const[
                                Icon(Icons.favorite,color: Colors.pink,),
                                Text('400',
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(8.0),
                          elevation: 2.0,
                          child: SizedBox(
                            width: 60.0,
                            height: 60.0,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(5.0),
                          
                            // ),
                            child: Column(
                              children: const[
                                Icon(Icons.chat_bubble_outline,color: Colors.pink,),
                                Text('400',
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(8.0),
                          elevation: 2.0,
                          child: SizedBox(
                            width: 60.0,
                            height: 60.0,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(8.0),
                          
                            // ),
                            child: Column(
                              
                          
                              children: const[
                                Icon(Icons.bookmark_outline,color: Colors.pink,),
                                Text('400',
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                // ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Padding(
              
                padding: EdgeInsets.only(left: 24.0),
                child: Text(
                  'Best selling food items',
                  
                  style: TextStyle(
                    // backgroundColor: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
      
                ),
                const Padding(
                  padding:  EdgeInsets.only(left: 24.0,right: 24.0),
                child: Divider(thickness: 2.0,),
                  ),

                  GridView.count(
                    physics: const ScrollPhysics(),
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 0.85,
                    
                    crossAxisCount:2,
                    shrinkWrap: true,
                    children: [
                      buildFoodItem('Cup Cake', 'Best Cake in Twin Cities', 50,
                      'assets/OIP.jpg', 123, 456,1),
                  buildFoodItem('Cup Cake', 'Best Cake in Twin Cities', 50,
                      'assets/OIP.jpg', 123, 456, 2),
                  buildFoodItem('Cup Cake', 'Best Cake in Twin Cities', 50,
                      'assets/OIP.jpg', 123, 456, 3),
                  buildFoodItem('Cup Cake', 'Best Cake in Twin Cities', 50,
                      'assets/OIP.jpg', 123, 456, 4),
                  buildFoodItem('Cup Cake', 'Best Cake in Twin Cities', 50,
                      'assets/OIP.jpg', 12, 456, 5),
                  buildFoodItem('Cup Cake', 'Best Cake in Twin Cities', 50,
                      'assets/OIP.jpg', 123, 456, 6),
                    ],),
            ],
          )
        ],
      ),
    );
  }




Widget buildFoodItem(String name,String desc, num price,String imageurl,
int likes, int commentcount,int index){
  return Padding(
    padding: index.isEven
    ? const EdgeInsets.only(right: 16.0)
    : const EdgeInsets.only(left: 16.0),

    child: Container(
      height: 280.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          width: 1.0,
          style: BorderStyle.solid,
        )
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 124.0,
                decoration:  BoxDecoration(
                  borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage(imageurl),
                    fit: BoxFit.cover),
                ),
              ),

               Padding(
                padding:const  EdgeInsets.only(left: 8.0,top: 8.0),
                child: Text(
                  name,
                  style:const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 14.0,
                    color: Colors.blueGrey,

                  ),
                ),
                ),
                const SizedBox(height: 4.0),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Text(
                    'Rs. $price',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0,
                        color: Colors.grey.shade700),
                  ),
                  ),
                  const SizedBox(height: 4.0),
                  Padding(
                    padding:const EdgeInsets.only(left: 5.0,top: 10.0),
                    child:Row(
                      children:  [
                        const Icon(Icons.favorite,
                        color: Colors.pinkAccent),
                        const SizedBox(width: 2.0),
                        Text(
                        likes.toString(),
                        style: const TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),

                      const SizedBox(width: 2.0),
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      const SizedBox(width: 2.0),
                      Text(
                        commentcount.toString(),
                        style: const TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                      ],
                    ) ,
                    )

            ],
          ),
          // ......................
        ],
      ),
    ),
    );
}
}
