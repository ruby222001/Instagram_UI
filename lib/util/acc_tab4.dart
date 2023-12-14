import 'package:flutter/material.dart';
class Acccounttab4 extends StatelessWidget {
  const Acccounttab4({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount:20,
       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3),
       itemBuilder: (context,index){
        return Padding(
          padding:const EdgeInsets.all(2),
          child:Container(color:Colors.deepPurple[100]),
        );
       },
    );
  }
}