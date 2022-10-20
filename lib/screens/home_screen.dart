import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibile/controllers/home_controller.dart';
import 'package:ibile/widgets/added_input.dart';
import 'package:ibile/widgets/custom_text.dart';
import 'package:ibile/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return Obx(
      () => Scaffold(
        backgroundColor: white,
        body: Padding(
          padding: const EdgeInsets.all(3.0),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: () => Get.back(),
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: dark,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () => showDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) => const AddedInput(),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 35,
                          color: dark,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 20.0, left: 10),
                  child: CustomText(
                    text:
                        '${homeController.firstNumber.value}, ${homeController.secondNumber.value}, ${homeController.thirdNumber.value}, ${homeController.forthNumber.value}',
                    size: 20.0,
                    weight: FontWeight.w600,
                    color: dark,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 80,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/${homeController.showHouse8.value}.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 80,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/${homeController.showHouse7.value}.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 80,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/${homeController.showHouse6.value}.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 80,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/${homeController.showHouse5.value}.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 80,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/${homeController.forthNumber.value}.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 80,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/${homeController.thirdNumber.value}.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 80,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/${homeController.secondNumber.value}.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 80,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/${homeController.firstNumber.value}.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 80,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/${homeController.showHouse12.value}.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 60),
                      Container(
                        height: 80,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/${homeController.showHouse11.value}.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 80,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/${homeController.showHouse10.value}.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 60),
                      Container(
                        height: 80,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/${homeController.showHouse9.value}.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 80,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/${homeController.showHouse14.value}.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/${homeController.showHouse13.value}.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/${homeController.showHouse15.value}.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (homeController.confirm.value)
                      Column(
                        children: [
                          if (homeController.firstTest.value)
                            Container(
                              margin: const EdgeInsets.only(left: 30),
                              child: Icon(
                                Icons.check_circle_outline,
                                size: 60,
                                color: green,
                              ),
                            )
                          else
                            Container(
                              margin: const EdgeInsets.only(left: 30),
                              child: Icon(
                                Icons.cancel_outlined,
                                size: 60,
                                color: red,
                              ),
                            ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0, left: 30),
                            child: CustomText(
                              text: 'First Test',
                              size: 15.0,
                              weight: FontWeight.bold,
                              color: dark,
                            ),
                          ),
                        ],
                      )
                    else
                      Container(
                        margin: const EdgeInsets.only(top: 10.0, left: 30),
                        child: CustomText(
                          text: 'Try Again',
                          size: 15.0,
                          weight: FontWeight.bold,
                          color: red,
                        ),
                      ),
                    if (homeController.second.value)
                      Column(
                        children: [
                          if (homeController.secondTest.value)
                            Container(
                              child: Icon(
                                Icons.check_circle_outline,
                                size: 60,
                                color: green,
                              ),
                            )
                          else
                            Container(
                              child: Icon(
                                Icons.cancel_outlined,
                                size: 60,
                                color: red,
                              ),
                            ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            child: CustomText(
                              text: 'Second Test',
                              size: 15.0,
                              weight: FontWeight.bold,
                              color: dark,
                            ),
                          ),
                        ],
                      ),
                    Container(
                      height: 80,
                      width: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/${homeController.showHouse16.value}.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        if (homeController.confirm.value)
                          Container(
                            height: 60,
                            width: 90,
                            decoration: BoxDecoration(
                              color: green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )
                        else
                          Container(
                            height: 60,
                            width: 90,
                            decoration: BoxDecoration(
                              color: red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          child: CustomText(
                            text: 'Confirmation',
                            size: 15.0,
                            weight: FontWeight.bold,
                            color: dark,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/${homeController.showSpeedHouse.value}.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          child: CustomText(
                            text:
                                'Speed, ${homeController.showSpeedHouse.value}',
                            size: 15.0,
                            weight: FontWeight.bold,
                            color: dark,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 30,
                          child: Center(
                            child: CustomText(
                              text:
                                  homeController.showOnesHouse.value.toString(),
                              size: 25.0,
                              weight: FontWeight.bold,
                              color: dark,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          child: CustomText(
                            text: "One's",
                            size: 15.0,
                            weight: FontWeight.bold,
                            color: dark,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
