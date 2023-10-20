import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingapp/model/myprovider.dart';
import 'package:shoppingapp/view/introscreen.dart';

void main() {
  runApp(const shoppingapp());
}

class shoppingapp extends StatelessWidget {
  const shoppingapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => my_provider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: intro(),
      ),
    );
  }
}
