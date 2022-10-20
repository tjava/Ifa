import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibile/constants/colors.dart';
import 'package:ibile/controllers/home_controller.dart';
import 'package:ibile/data/data.dart';
import 'package:ibile/widgets/custom_text.dart';

class AddedInput extends StatefulWidget {
  const AddedInput({Key? key}) : super(key: key);

  @override
  State<AddedInput> createState() => _AddedInputState();
}

class _AddedInputState extends State<AddedInput>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    scaleAnimation = CurvedAnimation(
      parent: controller,
      curve: Curves.bounceOut,
    );

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return Center(
      child: ScaleTransition(
        scale: scaleAnimation,
        child: Container(
          height: 300,
          width: 250,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          child: Scaffold(
            body: Obx(() {
              if (!homeController.confirm.value)
                return Center(
                  child: Container(
                    child: CustomText(
                      text: 'Try Again',
                      size: 15.0,
                      weight: FontWeight.bold,
                      color: red,
                    ),
                  ),
                );

              return Column(
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 30.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 4),
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 30,
                            offset: const Offset(8, 10),
                            color: dark.withOpacity(0.1),
                          ),
                          BoxShadow(
                            blurRadius: 10,
                            offset: const Offset(-1, -5),
                            color: dark.withOpacity(0.1),
                          ),
                        ],
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: dark,
                          ),
                          iconSize: 36.0,
                          value:
                              homeController.firstTestNumber.value.toString(),
                          items: houses.map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: CustomText(
                                  text: value,
                                ),
                              );
                            },
                          ).toList(),
                          onChanged: (String? number) async {
                            await homeController.changeFirstTestNumber(
                              number: int.parse(number!),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 30.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 4),
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 30,
                            offset: const Offset(8, 10),
                            color: dark.withOpacity(0.1),
                          ),
                          BoxShadow(
                            blurRadius: 10,
                            offset: const Offset(-1, -5),
                            color: dark.withOpacity(0.1),
                          ),
                        ],
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: dark,
                          ),
                          iconSize: 36.0,
                          value:
                              homeController.secondTestNumber.value.toString(),
                          items: houses.map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: CustomText(
                                  text: value,
                                ),
                              );
                            },
                          ).toList(),
                          onChanged: (String? number) async {
                            await homeController.changeSecondTestNumber(
                              number: int.parse(number!),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        homeController.runSecondTest();
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 60,
                        width: 200,
                        margin: const EdgeInsets.only(top: 30.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 4),
                        decoration: BoxDecoration(
                          color: dark,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 30,
                              offset: const Offset(8, 10),
                              color: dark.withOpacity(0.1),
                            ),
                            BoxShadow(
                              blurRadius: 10,
                              offset: const Offset(-1, -5),
                              color: dark.withOpacity(0.1),
                            ),
                          ],
                        ),
                        child: Center(
                          child: CustomText(
                            text: 'Second Test',
                            size: 20.0,
                            weight: FontWeight.w600,
                            color: white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 11),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
