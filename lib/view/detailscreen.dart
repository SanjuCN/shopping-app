import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingapp/model/model.dart';
import 'package:shoppingapp/model/myprovider.dart';

class detail extends StatefulWidget {
  final int itemIndex;
  const detail({super.key, required this.itemIndex});

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    final Providerr = Provider.of<my_provider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${Provider.of<my_provider>(context, listen: false).priceCal(2000)} Rs.",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {
                Providerr.addToCart(widget.itemIndex);
                const snackBar = SnackBar(
                  content: Text('Product added to cart successfully.'),
                  backgroundColor: Colors.black,
                );
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                Providerr.resetItemCount();
              },
              child: Container(
                height: 40,
                width: 120,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 400,
                width: 250,
                child: Image.network(items[widget.itemIndex]['image']),
              ),
            ),
            Text(
              items[widget.itemIndex]['name'],
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ),
                Text(
                  "4.5/5",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("(50 Reviews)"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "dsdbfjbfna nanfdj,nfa,ad ndf,manf, ,nf,ajkglkhwjlgjlkrn n,mrngjkrerhtirhilkrnggn  grkgehgrhjgilrjtglkrrfg klrnhewtheeikrh fdfnurhfienf jefhieh ddfhehjeoifn me,sf nelkthirf esf ejkrheeirjnes cdsfewjkhtejk"),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.grey,
                    child: Container(
                        height: 35, width: 35, child: Center(child: Text("S"))),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.grey,
                    child: Center(child: Text("M")),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.grey,
                    child: Center(child: Text("L")),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Price:",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 35,
                  width: 80,
                  child: Center(
                    child: Text(
                      "2000 Rs.",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                ),
                Container(
                  height: 40,
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {
                            Provider.of<my_provider>(context, listen: false)
                                .add();
                          },
                          icon: Icon(Icons.add)),
                      Text(
                        Provider.of<my_provider>(context).value.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 21),
                      ),
                      IconButton(
                          onPressed: () {
                            Provider.of<my_provider>(context, listen: false)
                                .remove();
                          },
                          icon: Icon(Icons.remove)),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
