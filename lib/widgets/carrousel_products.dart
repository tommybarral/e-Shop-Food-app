import 'package:flutter/material.dart';
import '../models/food_data.dart';
import 'package:provider/provider.dart';


class CarrouselProducts extends StatelessWidget {
  const CarrouselProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final loadedFoodData = Provider.of<FoodData>(context).foodItems;


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: double.infinity,
        child: ListView.builder(
          itemCount: loadedFoodData.length,
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
                  image: NetworkImage(loadedFoodData[index].imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                    Container(
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
                            loadedFoodData[index].title,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${loadedFoodData[index].stars}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('${loadedFoodData[index].note}'),
                              Text('${loadedFoodData[index].comments} comments'),
                              SizedBox(width: MediaQuery.of(context).size.width / 10,),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.stars, color: Colors.yellow,),
                                  Text(
                                    loadedFoodData[index].difficulty,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.place, color: Colors.greenAccent,),
                                  Text(
                                    '${loadedFoodData[index].location} km',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.timer_outlined, color: Colors.redAccent,),
                                  Text(
                                    '${loadedFoodData[index].timer} min',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
