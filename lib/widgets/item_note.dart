import 'package:flutter/material.dart';

class ItemNote extends StatelessWidget {
  const ItemNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5),
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Text(
                'Flutter Tips',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            subtitle: Text(
              'Build your career with patoora',
              style: TextStyle(
                color: Colors.white.withOpacity(.6),
                fontFamily: 'Poppins',
              ),
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
            padding: EdgeInsets.only(right: 8),
            child: Text(
              'sep25 , 2023',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 10,
                  color: Colors.white.withOpacity(0.3)),
            ),
          )
        ],
      ),
    );
  }
}
