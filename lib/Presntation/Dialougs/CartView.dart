import 'package:flutter/material.dart';
import 'package:online_shop/Presntation/moduls/Product.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  List<Product> products = [
    Product(
      imgurl: 'https://static2.peppeshoes.com/6190-product_main/-modello-felerro.jpg',
      name: 'Italian Shoes',
    ),
    Product(
      imgurl: 'https://media.cnn.com/api/v1/images/stellar/prod/211025072623-macbook-pro-14-display-5.jpg?q=w_4032,h_2268,x_0,y_0,c_fill',
      name: 'Mac Pro 2022',
    ),
    Product(
      imgurl: 'https://ng.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/97/453548/1.jpg?2290',
      name: 'spoon set',
    ),
    Product(
      imgurl: 'https://www.ubuy.com.tr/productimg/?image=aHR0cHM6Ly9tLm1lZGlhLWFtYXpvbi5jb20vaW1hZ2VzL0kvOTExQU5SY3Bwc1MuX0FDX1VMMTUwMF8uanBn.jpg',
      name: 'Jense',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, cons) => Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 8),
                  child: Container(
                    height: 53,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.west,
                              color: Colors.black,
                              size: 20,
                            )),
                        label: const Center(
                          child: Text(
                            'My orders',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Container(
                    height: cons.maxHeight ,
                    width: cons.maxWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView.builder(
                      itemCount: products.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                children: [
                                  Image.network(products[index].imgurl.toString(),height: 130,width: 130,),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  products[index].name.toString(),
                                  style: const TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  'delivered',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.lightGreen),
                                ),
                                const Text(
                                  'Today 05:44',
                                  style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.delete),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.refresh,
                                        color: Colors.lightGreen,
                                      ),
                                      Text(
                                        'Re-order',
                                        style: TextStyle(
                                            color: Colors.lightGreen,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
