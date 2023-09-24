import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class ItemNote extends StatelessWidget {
  const ItemNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: const Text(
                'Flutter Tips',
                style: style,
              ),
            ),
            subtitle: const Text(
              'Build your career with patoora',
              style: style,
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 35,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: const Text(
              'sep25 , 2023',
              style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}
