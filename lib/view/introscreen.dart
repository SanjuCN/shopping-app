import 'package:flutter/material.dart';
import 'package:shoppingapp/view/bottom.dart';
import 'package:shoppingapp/view/home.dart';

class intro extends StatelessWidget {
  const intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: 800,
          width: 400,
          child: Image.network(
            "https://i.pinimg.com/564x/c0/b0/dc/c0b0dc98cf717cb4643777e36cfb5478.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => bottom_bar(),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Get Started",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
