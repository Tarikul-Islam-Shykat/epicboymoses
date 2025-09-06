import 'package:epicboymoses/core/const/icons_path.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/feature/user_flow/saved/controller/saved_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SavedController savedController = Get.put(SavedController());
    return Scaffold(
      backgroundColor: const Color(0xFFF7F5FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Row(
                children: [
                  Text(
                    'Saved Cleaner',
                    style: globalTextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 5),
                  CircleAvatar(
                    maxRadius: 15,
                    backgroundColor: Color(0xff4FD1C5),
                    child: Text(
                      savedController.savedCount.toString(),
                      style: globalTextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
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
                          Row(
                            children: [
                              ClipOval(
                                child: Image.network(
                                  'https://randomuser.me/api/portraits/men/${index + 5}.jpg',
                                  fit: BoxFit.fill,
                                  height: 50,
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Standard Cleaning ${index+1}",
                                    style: globalTextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff4B4B50),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 17,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 17,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 17,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 17,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.grey,
                                        size: 17,
                                      ),
                                      Text(
                                        '(4.5/5)',
                                        style: globalTextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              SvgPicture.asset(IconsPath.save),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 17,
                                color: Colors.grey,
                              ),
                              Text(
                                'Warshawa, Poland',
                                style: globalTextStyle(fontSize: 11),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.attach_money_rounded,
                                size: 17,
                                color: Colors.grey,
                              ),

                              Text(
                                '20\$/h',
                                style: globalTextStyle(fontSize: 11),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.calendar_view_day_rounded,
                                size: 17,
                                color: Colors.grey,
                              ),
                              Text(
                                'Full-time, Part-time',
                                style: globalTextStyle(fontSize: 11),
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
