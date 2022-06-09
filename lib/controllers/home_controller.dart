import 'package:get/get.dart';
import 'package:ibile/services/home_service.dart';

class HomeController extends GetxController {
  HomeService? homeService = HomeService();
  Rx<int?> firstNumber = 1.obs;
  Rx<int?> secondNumber = 2.obs;
  Rx<int?> thirdNumber = 3.obs;
  Rx<int?> forthNumber = 4.obs;

  List<int>? house1;
  List<int>? house2;
  List<int>? house3;
  List<int>? house4;

  List<int>? house5 = [0, 0, 0, 0];
  List<int>? house6 = [0, 0, 0, 0];
  List<int>? house7 = [0, 0, 0, 0];
  List<int>? house8 = [0, 0, 0, 0];
  List<int>? house9 = [0, 0, 0, 0];
  List<int>? house10 = [0, 0, 0, 0];
  List<int>? house11 = [0, 0, 0, 0];
  List<int>? house12 = [0, 0, 0, 0];
  List<int>? house13 = [0, 0, 0, 0];
  List<int>? house14 = [0, 0, 0, 0];
  List<int>? house15 = [0, 0, 0, 0];
  List<int>? house16 = [0, 0, 0, 0];

  Rx<int?> showHouse5 = 5.obs;
  Rx<int?> showHouse6 = 6.obs;
  Rx<int?> showHouse7 = 7.obs;
  Rx<int?> showHouse8 = 8.obs;
  Rx<int?> showHouse9 = 9.obs;
  Rx<int?> showHouse10 = 10.obs;
  Rx<int?> showHouse11 = 11.obs;
  Rx<int?> showHouse12 = 12.obs;
  Rx<int?> showHouse13 = 13.obs;
  Rx<int?> showHouse14 = 14.obs;
  Rx<int?> showHouse15 = 15.obs;
  Rx<int?> showHouse16 = 16.obs;

  Future changeFirstNumber({int? number}) async => firstNumber.value = number!;
  Future changeSecondNumber({int? number}) async =>
      secondNumber.value = number!;
  Future changeThirdNumber({int? number}) async => thirdNumber.value = number!;
  Future changeForthNumber({int? number}) async => forthNumber.value = number!;

  void teYepe() {
    house1 = homeService!.computeHouse(house: firstNumber.value);
    house2 = homeService!.computeHouse(house: secondNumber.value);
    house3 = homeService!.computeHouse(house: thirdNumber.value);
    house4 = homeService!.computeHouse(house: forthNumber.value);

    house5![0] = house1![0];
    house5![1] = house2![0];
    house5![2] = house3![0];
    house5![3] = house4![0];

    house6![0] = house1![1];
    house6![1] = house2![1];
    house6![2] = house3![1];
    house6![3] = house4![1];

    house7![0] = house1![2];
    house7![1] = house2![2];
    house7![2] = house3![2];
    house7![3] = house4![2];

    house8![0] = house1![3];
    house8![1] = house2![3];
    house8![2] = house3![3];
    house8![3] = house4![3];

    house9![0] = homeService!.sumHouse(house1: house1![0], house2: house2![0])!;
    house9![1] = homeService!.sumHouse(house1: house1![1], house2: house2![1])!;
    house9![2] = homeService!.sumHouse(house1: house1![2], house2: house2![2])!;
    house9![3] = homeService!.sumHouse(house1: house1![3], house2: house2![3])!;

    house10![0] =
        homeService!.sumHouse(house1: house3![0], house2: house4![0])!;
    house10![1] =
        homeService!.sumHouse(house1: house3![1], house2: house4![1])!;
    house10![2] =
        homeService!.sumHouse(house1: house3![2], house2: house4![2])!;
    house10![3] =
        homeService!.sumHouse(house1: house3![3], house2: house4![3])!;

    house11![0] =
        homeService!.sumHouse(house1: house5![0], house2: house6![0])!;
    house11![1] =
        homeService!.sumHouse(house1: house5![1], house2: house6![1])!;
    house11![2] =
        homeService!.sumHouse(house1: house5![2], house2: house6![2])!;
    house11![3] =
        homeService!.sumHouse(house1: house5![3], house2: house6![3])!;

    house12![0] =
        homeService!.sumHouse(house1: house7![0], house2: house8![0])!;
    house12![1] =
        homeService!.sumHouse(house1: house7![1], house2: house8![1])!;
    house12![2] =
        homeService!.sumHouse(house1: house7![2], house2: house8![2])!;
    house12![3] =
        homeService!.sumHouse(house1: house7![3], house2: house8![3])!;

    house13![0] =
        homeService!.sumHouse(house1: house9![0], house2: house10![0])!;
    house13![1] =
        homeService!.sumHouse(house1: house9![1], house2: house10![1])!;
    house13![2] =
        homeService!.sumHouse(house1: house9![2], house2: house10![2])!;
    house13![3] =
        homeService!.sumHouse(house1: house9![3], house2: house10![3])!;

    house14![0] =
        homeService!.sumHouse(house1: house11![0], house2: house12![0])!;
    house14![1] =
        homeService!.sumHouse(house1: house11![1], house2: house12![1])!;
    house14![2] =
        homeService!.sumHouse(house1: house11![2], house2: house12![2])!;
    house14![3] =
        homeService!.sumHouse(house1: house11![3], house2: house12![3])!;

    house15![0] =
        homeService!.sumHouse(house1: house13![0], house2: house14![0])!;
    house15![1] =
        homeService!.sumHouse(house1: house13![1], house2: house14![1])!;
    house15![2] =
        homeService!.sumHouse(house1: house13![2], house2: house14![2])!;
    house15![3] =
        homeService!.sumHouse(house1: house13![3], house2: house14![3])!;

    house16![0] =
        homeService!.sumHouse(house1: house1![0], house2: house15![0])!;
    house16![1] =
        homeService!.sumHouse(house1: house1![1], house2: house15![1])!;
    house16![2] =
        homeService!.sumHouse(house1: house1![2], house2: house15![2])!;
    house16![3] =
        homeService!.sumHouse(house1: house1![3], house2: house15![3])!;

    showHouse5.value = homeService!.resultHouse(house: house5);
    showHouse6.value = homeService!.resultHouse(house: house6);
    showHouse7.value = homeService!.resultHouse(house: house7);
    showHouse8.value = homeService!.resultHouse(house: house8);
    showHouse9.value = homeService!.resultHouse(house: house9);
    showHouse10.value = homeService!.resultHouse(house: house10);
    showHouse11.value = homeService!.resultHouse(house: house11);
    showHouse12.value = homeService!.resultHouse(house: house12);
    showHouse13.value = homeService!.resultHouse(house: house13);
    showHouse14.value = homeService!.resultHouse(house: house14);
    showHouse15.value = homeService!.resultHouse(house: house15);
    showHouse16.value = homeService!.resultHouse(house: house16);

    Get.toNamed("/home");
  }
}
