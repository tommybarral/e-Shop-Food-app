import 'package:flutter/material.dart';

class AdditionalInformations extends StatelessWidget {
  const AdditionalInformations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: const [
              Icon(Icons.stars, color: Colors.yellow,),
              Text(
                'Normal',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.place, color: Colors.greenAccent,),
              Text(
                '1.7km',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.timer_outlined, color: Colors.redAccent,),
              Text(
                '32 min',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
