import 'package:flutter/material.dart';

class Userposts extends StatelessWidget {
  final String name;
  Userposts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //profile photo
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.grey[300],
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(Icons.chat_bubble_outline)),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),

//comments
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text('Liked by'),
              Text(
                ' mitchkoko',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and'),
              Text(
                ' others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        //caption
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                    text: 'maharjan',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'hello....................................................................................................................'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
