import 'package:eshop_food_app/widgets/additional_information.dart';
import 'package:flutter/material.dart';

class PopularCarrouselProducts extends StatelessWidget {
  const PopularCarrouselProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 20.0, right: 20.0),
            child: Row(
              children: [
                Container(
                  height: 125,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://moview.nl/wp-content/uploads/2018/04/Mountain_RvB-3-bw.jpg'),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10),),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nutritious fruit'),
                        Text('subtitle'),
                        AdditionalInformations(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
