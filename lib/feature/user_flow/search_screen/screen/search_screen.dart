import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/feature/user_flow/search_screen/controller/search_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/utils.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SearchScreenController screenController = Get.put(SearchScreenController());
    return Scaffold(
      backgroundColor: const Color(0xFFF7F5FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // search
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: 'I am looking for',
                    hintStyle: globalTextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // list
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(screenController.ratingList.length, (
                    index,
                  ) {
                    final entry =
                        screenController.ratingList[index].entries.first;
                    final icon = entry.key;
                    final label = entry.value;

                    return Obx(() {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: screenController.selectedRating.value == index
                              ? Colors.teal.withAlpha(50)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color:
                                screenController.selectedRating.value == index
                                ? Colors.teal
                                : Colors.transparent,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            onTap: () {
                              screenController.selectedRating.value = index;
                            },
                            child: Row(
                              children: [
                                icon!,
                                Text(
                                  label,
                                  style: globalTextStyle(
                                    color:
                                        screenController.selectedRating.value ==
                                            index
                                        ? Colors.teal
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
                  }),
                ),
              ),

              SizedBox(height: 20),

              // items
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(10, (index) {
                  return Container(
                    width: double.infinity,

                    margin: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Standard Cleaning",
                            style: globalTextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4B4B50),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.orange, size: 17),
                              Icon(Icons.star, color: Colors.orange, size: 17),
                              Icon(Icons.star, color: Colors.orange, size: 17),
                              Icon(Icons.star, color: Colors.orange, size: 17),
                              Icon(Icons.star, color: Colors.grey, size: 17),
                              Text(
                                '(4.5/5)',
                                style: globalTextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.shopping_bag_outlined,
                                size: 17,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Min 2 hours',
                                style: globalTextStyle(fontSize: 14),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.money, size: 17, color: Colors.grey),
                              SizedBox(width: 5),
                              Text(
                                '20.80/h',
                                style: globalTextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
