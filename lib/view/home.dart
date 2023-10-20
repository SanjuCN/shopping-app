import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingapp/model/model.dart';
import 'package:shoppingapp/model/myprovider.dart';
import 'package:shoppingapp/view/detailscreen.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Discover",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 250,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                      child: Center(child: Text("Search")),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: ListView.builder(
                itemCount: scrollingItems.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text(scrollingItems[index])),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              itemCount: items.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail(
                                        itemIndex: index,
                                      ),
                                    ));
                              },
                              child: Container(
                                height: 300,
                                width: 150,
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 150,
                                          height: 170,
                                          color: Colors.amber,
                                          child: Image.network(
                                            items[index]['image'],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: IconButton(
                                                onPressed: () {
                                                  Provider.of<my_provider>(
                                                          context,
                                                          listen: false)
                                                      .onTapSave(index);
                                                  const snackBar = SnackBar(
                                                    content: Text(
                                                        'Item saved successfully.'),
                                                    backgroundColor:
                                                        Colors.black,
                                                  );
                                                  ScaffoldMessenger.of(context)
                                                      .clearSnackBars();
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(snackBar);
                                                },
                                                icon: Icon(
                                                  Provider.of<my_provider>(
                                                                  context)
                                                              .isSaved ==
                                                          true
                                                      ? Icons.favorite
                                                      : Icons.favorite_outline,
                                                )),
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      items[index]['name'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 90),
                                      child:
                                          Text("${items[index]['price']} Rs."),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail(
                                        itemIndex: index,
                                      ),
                                    ));
                              },
                              child: Container(
                                height: 300,
                                width: 150,
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 150,
                                          height: 170,
                                          child: Image.network(
                                            items[index]['image'],
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.amber,
                                        ),
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: IconButton(
                                                onPressed: () {
                                                  Provider.of<my_provider>(
                                                          context,
                                                          listen: false)
                                                      .onTapSave(index);
                                                  const snackBar = SnackBar(
                                                    content: Text(
                                                        'Item saved successfully.'),
                                                    backgroundColor:
                                                        Colors.black,
                                                  );
                                                  ScaffoldMessenger.of(context)
                                                      .clearSnackBars();
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(snackBar);
                                                },
                                                icon: Icon(
                                                  Provider.of<my_provider>(
                                                                  context)
                                                              .isSaved ==
                                                          true
                                                      ? Icons.favorite
                                                      : Icons.favorite_outline,
                                                )),
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      items[index]['name'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 90),
                                      child:
                                          Text("${items[index]['price']} Rs."),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
