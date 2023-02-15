import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';

class ListgridDemo extends StatefulWidget {
  const ListgridDemo({Key? key}) : super(key: key);

  @override
  State<ListgridDemo> createState() => _ListviewDemoState();
}

class _ListviewDemoState extends State<ListgridDemo> {

  var nameList=['Burgur','Cofee','chicken','pizza'];
  bool like=false;
  var Selected = 0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.cyan,
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 18,vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("be",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
                    Text("Foodie",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Tasty food at your home...!"),
                  ],
                ),
                SizedBox(height: 30,),

                Row(
                  children: [
                    Text("Our categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    SizedBox(width: 170,),
                    Text("view all"),
                  ],
                ),

                SizedBox(height: 20,),

                Container(
                  height: 47.h,
                  child: GridView.builder(
                   itemCount:nameList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context,index){
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 2,color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: GridTile(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: NetworkImage("https://media.istockphoto.com/id/1206323282/photo/juicy-hamburger-on-white-background.jpg?s=612x612&w=0&k=20&c=K0DxyiChLwewXcCy8aLjjOqkc8QXPgQMAW-vwRCzqG4="),fit:BoxFit.fill,),
                              ),
                              Text(nameList[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              SizedBox(height: 5),
                              Text("6 variants"),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 10),

               Container(
                 height: 7.h,
                 width: 92.w,
                 padding: EdgeInsets.all(13),
                 decoration: BoxDecoration(
                   border: Border.all(width: 2,color: Colors.black12),
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),),
                 ),
                 child: Row(
                   children: [
                     Text("Featured iterms",style: TextStyle(fontWeight: FontWeight.bold),),
                   ],
                 ),
               ),

                Container(
                  height: 60 * double.parse(nameList.length.toString()),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.black12),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),
                  ),
                   child: ListView.builder(
                    itemCount: nameList.length,
                    itemBuilder: (context,index){
                      return Container(
                        child: ListTile(
                          leading: Container(
                            height: 20.h,
                              width: 15.w,
                              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH8x0vLo3OupJJRsHEnqBGL2veufKKE_3KKw&usqp=CAU")
                          ),
                           title: Column(
                             children: [
                               Row(
                                 children: [
                                   Text("Quisque nulkam dolor",style: TextStyle(fontWeight: FontWeight.bold),),
                                   SizedBox(width: 8.w),
                                   Text("\$14.50",style: TextStyle(fontWeight: FontWeight.bold),),
                                 ],
                               ),
                               // SizedBox(height: 5,),

                               Row(
                                 children: [
                                   Text("4.8"),
                                   SizedBox(width: 5,),

                                   RatingBar.builder(
                                     initialRating: 4,
                                     minRating: 1,
                                     direction: Axis.horizontal,
                                     allowHalfRating: true,
                                     itemCount: 5,
                                     itemSize: 15,
                                     ignoreGestures: true,
                                     itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                     itemBuilder: (context, _ ) => Icon(Icons.star, color: Colors.black,),
                                     onRatingUpdate: (rating) {
                                       print(rating);
                                     },
                                   ),
                                   SizedBox(width: 5,),
                                   Text("(217)",style: TextStyle(fontSize: 13),),
                                   SizedBox(width: 11.w,),
                                   Text("\$15.90",style: TextStyle(fontSize: 13,decoration: TextDecoration.lineThrough),),
                                 ],
                               ),
                             ],
                           ),
                        ),
                      );
                    },
                  ),
                ),


                SizedBox(height: 3.h,),

                Text("Newly added",style: TextStyle(fontWeight: FontWeight.w500),),

                SizedBox(height: 3.h,),

              Container(
                height:62.h,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context,index){
                      return Card(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: Colors.black12),
                            borderRadius: BorderRadius.circular(7),
                          ),

                          child: ListTile(
                           title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Row(
                                 children: [
                                   SizedBox(width: 1.w,),
                                   Text("Mediterranean Hummus",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                 ],
                               ),
                                SizedBox(height: 2,),

                                Row(
                                  children: [
                                    SizedBox(width: 1.w,),
                                    Text("Egg Smash",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                    SizedBox(width: 52.w,),

                                    GestureDetector(
                                      onTap: (){
                                        like=!like;
                                        setState(() {

                                        });
                                        print("${like}");
                                      },
                                        child: Icon(Icons.favorite,color: like==true? Colors.red : Colors.black12),
                                    ),

                                  ],
                                ),
                                SizedBox(height: 2,),

                                Row(
                                  children: [
                                    SizedBox(width: 1.w,),
                                    Text("4.8"),
                                   SizedBox(width: 1.w,),

                                  RatingBar.builder(
                                   initialRating: 4,
                                   minRating: 1,
                                   direction: Axis.horizontal,
                                   allowHalfRating: true,
                                   itemCount: 5,
                                   itemSize: 15,
                                   itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                   itemBuilder: (context, _ ) => Icon(Icons.star, color: Colors.black,),
                                   onRatingUpdate: (rating) {
                                    print(rating);
                                   },
                                  ),
                                    SizedBox(width: 1.w,),
                                    Text("(217)",style: TextStyle(fontSize: 13),),
                                    SizedBox(width: 25.w,),

                                    Text("\$27.99",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image(
                                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROdxZgiuc7W4V3kxWm2flYYb6ttLFlFFaNdg&usqp=CAU",),
                                      fit: BoxFit.cover,width: 100.w,height: 18.h,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      );
                   },
                ),
              ),
                
              ],
            ),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: Selected,
          onTap: (index){
            setState(() {
              Selected=index;
            });
          },
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          unselectedItemColor: Colors.black26,
          selectedItemColor: Colors.black,
          // selectedFontSize: 20,
          items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: " ",
               ),

              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: " ",
               ),

            BottomNavigationBarItem(
                icon:Icon(Icons.favorite_border),
              label: " ",
             ),

            BottomNavigationBarItem(
              icon: Icon(Icons.delete_outline_outlined),
              label: " ",
             ),

             BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: " ",
             ),

          ],
        ),

      ),
    );
  }
}
