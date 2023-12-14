import 'package:flutter/material.dart';
import 'package:instagram_ui/util/bubble.dart';
import 'package:instagram_ui/util/userposts.dart';

class UserHome extends StatelessWidget {
  final List people =['maharjan','nasala','sevika','rumi','rabi','samita','maharjan','nasala','sevika','rumi','rabi','samita'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Instagram',
                  style: TextStyle(color: Colors.black),
                ),
                Row(
                  children: [
                    Icon(Icons.add),
                    Icon(Icons.favorite),
                    Icon(Icons.message),
                  ],
                ),
              ],
            )),
        body:  Column(
          children: [
            //stories
            SizedBox(
              height: 130,
              child: ListView.builder(
                                scrollDirection: Axis.horizontal,

                itemCount: people.length,
                itemBuilder: (context,index){
                  return BubbleStories(text: people[index]);
                }
              
              ),
            ),
//post
Expanded(
  child: ListView.builder(
    itemCount: people.length,
    itemBuilder: (context,index){
    return Userposts(name: people[index],
  );
  },),
),
          ],
        ),
        );
  }
}
