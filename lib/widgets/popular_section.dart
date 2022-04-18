import 'package:flutter/material.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Popular', style: TextStyle(fontSize: 22),),
          CircleAvatar(
            radius: 2,
            foregroundColor: Colors.grey,
          ),
          Text('Food pairing', style: TextStyle(fontSize: 16, color: Colors.grey),),
          SizedBox(width: MediaQuery.of(context).size.width / 2.2,),
        ],
      ),
    );
  }
}
