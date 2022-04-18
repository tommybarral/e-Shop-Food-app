import 'package:flutter/material.dart';
import 'package:eshop_food_app/widgets/Banner_product.dart';

class CarrouselProducts extends StatelessWidget {
  const CarrouselProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              width: 350,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 4)),
                  BoxShadow(color: Colors.white24, blurRadius: 2, offset: Offset(0, -6)),
                ],
                image: DecorationImage(
                  image: NetworkImage('https://maisondelaclape.com/wp-content/uploads/2017/11/mountain-landscape-2031539_1920.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                    child: BannerProduct(),
                  ),
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
