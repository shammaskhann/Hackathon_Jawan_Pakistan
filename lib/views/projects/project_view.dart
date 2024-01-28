import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon2/resources/Colors/colors.dart';
import 'package:hackathon2/resources/Images/images.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController search_control = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                  backgroundColor: AppColors.secondary,
                  child: GestureDetector(
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColors.white,
                      ),
                      onTap: () {
                        Get.back();
                      })),
              const Text(
                "Project",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              CircleAvatar(
                  backgroundColor: AppColors.secondary,
                  child: GestureDetector(
                      child: const Icon(
                    Icons.add,
                    color: AppColors.white,
                  ))),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15),
                    child: TextField(
                      controller: search_control,
                      decoration: const InputDecoration(
                          fillColor: AppColors.secondary,
                          hintText: "Search Project Here",
                          hintStyle: TextStyle(
                            color: AppColors.grey,
                            fontSize: 16,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(color: AppColors.grey, width: 2),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(color: AppColors.primary, width: 2),
                          ),
                          border: InputBorder.none,
                          filled: true,
                          labelText: 'Search',
                          suffixIcon: Icon(Icons.search)),
                    ),
                  )),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.grey, width: 2),
                          borderRadius: BorderRadius.circular(20)),
                      child: GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("Productivity Mobile App",
                                        style: const TextStyle(
                                            color: AppColors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    const SizedBox(
                                      width: 90,
                                    ),
                                    Text(
                                      "10/20",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Productivity Mobile App",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset(AppImages.People),
                                    Image.asset(
                                      AppImages.Progressbar,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                  );
                }),
          ])),
      backgroundColor: AppColors.secondary,
    );
  }
}
