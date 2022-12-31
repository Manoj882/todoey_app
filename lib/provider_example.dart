import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*
===> Without using provider
    // Liftup state concept
    // data variable: declare variable in top level
    // pass data in Level3 container child: Text(data)

*/

class ProviderExample extends StatelessWidget {
  const ProviderExample({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyText(),
        centerTitle: true,
      ),
      body: Level1(),
    );
  }
}

class Level1 extends StatelessWidget {
  const Level1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level2(),
    );
  }
}

class Level2 extends StatelessWidget {
  const Level2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          MyTextField(),
          SizedBox(height: 10,),
          Level3(),
        ],
      ),
    );
  }
}



class Level3 extends StatelessWidget { 
  const Level3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(Provider.of<Data>(context).data),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(Provider.of<Data>(context, listen: false).data),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newText){
        Provider.of<Data>(context, listen: false).changeString(newText);
      },
    );
  }
}

class Data extends ChangeNotifier{
  String data = 'Latest Data';

  void changeString(String newString){
    data = newString;
    notifyListeners();
  }
  

}
