import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../moduls/CategoryModel.dart';
import '../moduls/bestSaler.dart';
class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  List<CategoryModel> Category=[
    CategoryModel(CategoryColor: Colors.grey,CategoryImage: "https://pyxis.nymag.com/v1/imgs/c4e/674/1892c1d09ba24378b0d547eeaffa7fac93-EN-US-Worn-S1-Main-Vertical-27x40-RGB-PR.rvertical.w600.jpg",CategoryName: "Clothes"),
    CategoryModel(CategoryColor: Colors.blueAccent,CategoryImage: "https://blessingstelecom.com/img/developerimg/choco_blessingstelecom_20200113100659_db/mebase/CustomSectionStyle/Images/original_200219061202_5e4cd1b2c5eb3.jpg",CategoryName: "elctronics"),
    CategoryModel(CategoryColor: Colors.brown,CategoryImage: "https://foodal.com/wp-content/uploads/2014/09/must-have-kitchen-gadets.jpg",CategoryName: "kitchen stuff"),
    CategoryModel(CategoryColor: Colors.amberAccent,CategoryImage: "https://ae01.alicdn.com/kf/H7b521d6f52b74853afe761fe12718db2x/Spring-Suede-Mens-Shoes-Casual-Fashion-British-Shoes-Men-Classic-Lace-Up-Derby-Shoes-For-Male.jpg_Q90.jpg_.webp",CategoryName: "Shoeses"),
  ];
  List <BestSaler> Saler=
  [
    BestSaler(CategoryName: "Italian Shoes",CategoryImage: "https://i.pinimg.com/originals/a9/68/f7/a968f7547842bf45c20576de0c728444.jpg",CategoryPrice: "1150"),
    BestSaler(CategoryName: "Mac Pro 2022",CategoryImage: "https://www.macworld.com/wp-content/uploads/2022/01/13-inch-14-inch-MacBook-Pro.jpg?quality=50&strip=all",CategoryPrice: "60000"),
    BestSaler(CategoryName: "spoon set",CategoryImage: "https://m.media-amazon.com/images/I/71wQBpjaq3L._SX679_.jpg",CategoryPrice: "150"),
    BestSaler(CategoryName: "Jense",CategoryImage: "https://thumbor.forbes.com/thumbor/trim/0x30:1061x1051/fit-in/711x684/smart/https://specials-images.forbesimg.com/imageserve/6185d8e7a7ba05b72e502546/Alexander-McQueen-Hybrid-Denim-Jacket/0x0.jpg",CategoryPrice: "850"),
    BestSaler(CategoryName: "Rihanna's Dress",CategoryImage: "https://media.vanityfair.com/photos/554821267df477df32ed0603/3:2/w_900,h_600,c_limit/met-gala-2015-rihanna-dress-breakout.jpg",CategoryPrice: "15000"),

  ];
  var Fav=0;
  var _value=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:  ListView(
      scrollDirection: Axis.vertical,

      children:<Widget> [
        SingleChildScrollView(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 50,
                width:300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle(fontSize:41),
                      icon: Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.search,size: 30,color: Colors.lightGreenAccent,)),

                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            ),
            SizedBox(height: 1,),
            Container(
              height: 230,
              child: ListView.builder(
                scrollDirection:Axis.horizontal ,
                itemCount: Category.length,
                itemBuilder: (context,index)
                {
                  return InkWell(
                    onTap: ()
                    {

                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 230,
                        width: 210,
                        decoration: BoxDecoration(
                            color: Category[index].CategoryColor!,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Column(
                          children: [
                            Center(child: Padding(
                              padding: const EdgeInsets.all(18.9),
                              child: Text(Category[index].CategoryName!,style: TextStyle(fontSize: 20,color: Colors.white),),
                            )),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: 152,
                                width: 145,

                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50),bottomLeft: Radius.circular(50),bottomRight: Radius.circular(30)),
                                  image: DecorationImage(
                                    fit: BoxFit.cover, image:NetworkImage(Category[index].CategoryImage!),

                                  ),
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

            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("BestSaler",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Spacer(),
                      Text("See more",style: TextStyle(fontSize: 15),)
                    ],
                  ),
                )),
            SizedBox(height: 1,),
            Container(
              height:300,
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection:Axis.horizontal ,
                  itemCount: Category.length,
                  itemBuilder: (context,index) {
                    return InkWell(
                      onTap: () {

                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Badge(
                          badgeColor: Colors.white70,
                          badgeContent: Icon(Icons.favorite,size: 35,color: Colors.red,),
                          position: BadgePosition.topStart(),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 800,
                              width: 300,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover, image: NetworkImage(Saler[index].CategoryImage!)

                                  ),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10)

                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 90,
                                  width: 300,
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(Saler[index].CategoryName!,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: RatingBar.builder(
                                              minRating: 1,
                                              itemSize: 20,
                                              itemBuilder:(context,_)=>Icon(Icons.star,color: Colors.amber,),
                                              onRatingUpdate: (rating)
                                              {

                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: Row(
                                              children: [
                                                Text(Saler[index].CategoryPrice!,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.green),),
                                                Text(" EGP",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Icon(Icons.add_shopping_cart,size: 40,color: Colors.white,),
                                          decoration: BoxDecoration(
                                              color: Colors.lightGreenAccent,
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    );
                  }
              ),

            ),

            Container(
              height: 180,
              width: 380,
              decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Good Shopping",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                        Text("    For Busy People",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:50,
                            width: 185,
                            child: Center(child: Text("View Our Menu",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold))),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(25)
                            ),
                          ),
                        )
                      ],),
                  ),
                  Spacer(),
                  Container(
                    height: 180,
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://www.princetonreview.com/cms-content/article-ways-to-green-your-life.jpeg")
                        ),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(90),bottomLeft: Radius.circular(50),topRight: Radius.circular(15),bottomRight: Radius.circular(15))
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    ),);
  }
}
