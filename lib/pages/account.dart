import 'package:flutter/material.dart';
import 'package:instagram_ui/util/acc_tab1.dart';
import 'package:instagram_ui/util/acc_tab2.dart';
import 'package:instagram_ui/util/acc_tab3.dart';
import 'package:instagram_ui/util/bubble.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Profile
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  // Number of posts, followers, and following
                  const Column(
                    children: [
                      Text('201',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text('Posts'),
                    ],
                  ),
                  const Column(
                    children: [
                      Text('2021',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text('Followers'),
                    ],
                  ),
                  const Column(
                    children: [
                      Text('21',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text('Following'),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'rubina',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('hi'),
                ],
              ),
            ),
            // Stories
         const   Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  BubbleStories(text: 'story1'),
                  BubbleStories(text: 'story1'),
                  BubbleStories(text: 'story1'),
                  BubbleStories(text: 'story1'),
                ],
              ),
            ),
         const   TabBar(
              tabs:  [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(children: [
                Acccounttab1(),
                Acccounttab2(),
                Acccounttab3(),
                Acccounttab3()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
