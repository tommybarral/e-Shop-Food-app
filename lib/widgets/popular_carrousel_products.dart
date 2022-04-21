import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/food_data.dart';

class PopularCarrouselProducts extends StatelessWidget {
  const PopularCarrouselProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final loadedFoodData = Provider.of<FoodData>(context).foodItems;

    return Container(
      height: 250,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemCount: loadedFoodData.length,
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
                          loadedFoodData[index].imageUrl),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width / 1.7,
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
                        Text(
                          loadedFoodData[index].title,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
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
                        ),
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
