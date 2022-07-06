import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibile/constants/colors.dart';
import 'package:ibile/controllers/home_controller.dart';
import 'package:ibile/data/data.dart';
import 'package:ibile/widgets/custom_text.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return Scaffold(
      backgroundColor: white,
      body: Obx(
        () => ListView(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 30.0, left: 10),
                child: CustomText(
                  text: 'Enter Numbers',
                  size: 20.0,
                  weight: FontWeight.w600,
                  color: dark,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/b1.png"),
                  // fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
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
                  value: homeController.firstNumber.value.toString(),
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
                    await homeController.changeFirstNumber(
                      number: int.parse(number!),
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
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
                  value: homeController.secondNumber.value.toString(),
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
                    await homeController.changeSecondNumber(
                      number: int.parse(number!),
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
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
                  value: homeController.thirdNumber.value.toString(),
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
                    await homeController.changeThirdNumber(
                      number: int.parse(number!),
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
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
                  value: homeController.forthNumber.value.toString(),
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
                    await homeController.changeForthNumber(
                      number: int.parse(number!),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () => homeController.teYepe(),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
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
                    text: 'GO',
                    size: 20.0,
                    weight: FontWeight.w600,
                    color: white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
