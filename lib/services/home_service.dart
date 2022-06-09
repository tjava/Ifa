import 'package:collection/collection.dart';

class HomeService {
  final List<int> house1 = [1, 1, 2, 1];
  final List<int> house2 = [1, 2, 2, 2];
  final List<int> house3 = [2, 1, 1, 1];
  final List<int> house4 = [2, 2, 1, 2];
  final List<int> house5 = [1, 1, 1, 1];
  final List<int> house6 = [1, 2, 1, 2];
  final List<int> house7 = [2, 1, 2, 2];
  final List<int> house8 = [2, 2, 2, 1];
  final List<int> house9 = [1, 1, 2, 2];
  final List<int> house10 = [1, 2, 2, 1];
  final List<int> house11 = [2, 1, 1, 2];
  final List<int> house12 = [2, 2, 1, 1];
  final List<int> house13 = [1, 1, 1, 2];
  final List<int> house14 = [1, 2, 1, 1];
  final List<int> house15 = [2, 1, 2, 1];
  final List<int> house16 = [2, 2, 2, 2];

  int? sumHouse({int? house1, int? house2}) {
    int result = house1! + house2!;
    switch (result) {
      case 2:
        return 2;
      case 3:
        return 1;
      case 4:
        return 2;
      default:
        return 0;
    }
  }

  Function compareHouse = const ListEquality().equals;

  int? resultHouse({List<int>? house}) {
    bool resultHouse1 = compareHouse(house, house1);
    bool resultHouse2 = compareHouse(house, house2);
    bool resultHouse3 = compareHouse(house, house3);
    bool resultHouse4 = compareHouse(house, house4);
    bool resultHouse5 = compareHouse(house, house5);
    bool resultHouse6 = compareHouse(house, house6);
    bool resultHouse7 = compareHouse(house, house7);
    bool resultHouse8 = compareHouse(house, house8);
    bool resultHouse9 = compareHouse(house, house9);
    bool resultHouse10 = compareHouse(house, house10);
    bool resultHouse11 = compareHouse(house, house11);
    bool resultHouse12 = compareHouse(house, house12);
    bool resultHouse13 = compareHouse(house, house13);
    bool resultHouse14 = compareHouse(house, house14);
    bool resultHouse15 = compareHouse(house, house15);
    bool resultHouse16 = compareHouse(house, house16);

    if (resultHouse1) {
      return 1;
    } else if (resultHouse2) {
      return 2;
    } else if (resultHouse3) {
      return 3;
    } else if (resultHouse4) {
      return 4;
    } else if (resultHouse5) {
      return 5;
    } else if (resultHouse6) {
      return 6;
    } else if (resultHouse7) {
      return 7;
    } else if (resultHouse8) {
      return 8;
    } else if (resultHouse9) {
      return 9;
    } else if (resultHouse10) {
      return 10;
    } else if (resultHouse11) {
      return 11;
    } else if (resultHouse12) {
      return 12;
    } else if (resultHouse13) {
      return 13;
    } else if (resultHouse14) {
      return 14;
    } else if (resultHouse15) {
      return 15;
    } else if (resultHouse16) {
      return 16;
    } else {
      return null;
    }
  }

  List<int>? computeHouse({int? house}) {
    switch (house) {
      case 1:
        return house1;
      case 2:
        return house2;
      case 3:
        return house3;
      case 4:
        return house4;
      case 5:
        return house5;
      case 6:
        return house6;
      case 7:
        return house7;
      case 8:
        return house8;
      case 9:
        return house9;
      case 10:
        return house10;
      case 11:
        return house11;
      case 12:
        return house12;
      case 13:
        return house13;
      case 14:
        return house14;
      case 15:
        return house15;
      case 16:
        return house16;
      default:
        return [];
    }
  }
}
