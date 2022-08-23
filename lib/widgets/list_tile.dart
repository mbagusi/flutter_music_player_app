import 'package:flutter/material.dart';

Widget listTileCustom({required String title, required String singer, required String cover, onTap}) {
  return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(image: NetworkImage(cover))),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: <Widget>[
              Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                singer,
                style: const TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          )
        ],
      ));
}
