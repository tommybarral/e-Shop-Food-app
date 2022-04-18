import 'package:eshop_food_app/widgets/additional_information.dart';
import 'package:flutter/material.dart';

class BannerProduct extends StatelessWidget {
  const BannerProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      width: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 15.0, right: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title product',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'number stars',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('4.5'),
                Text('1287 comments'),
                SizedBox(width: MediaQuery.of(context).size.width / 10,),
              ],
            ),
            AdditionalInformations(),
          ],
        ),
      ),
    );
  }
}
