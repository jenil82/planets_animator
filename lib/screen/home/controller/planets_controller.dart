import 'package:get/get.dart';
import '../model/planets_model.dart';
class PlanetsController extends GetxController {
  RxList<ErthModel> ErthList = [
    ErthModel(
        image: "assets/images/earth.png",
        view_image: "assets/images/erthg1.png",
        name: "Earth",
        distance: "54.6m",
        gravity: "3.711",
        Distancetoearth: "120.77m",
        Distancetosun: "239.28m",
        overview:
        "Erath is a town in Vermilion Parish, Louisiana, United States. The population was 2,114 at the 2010 census, and 2,030 at the 2020 population estimates program.",
        price: "2.8"),
    ErthModel(
        image: "assets/images/mars.png",
        view_image: "assets/images/mars1.png",
        name: "mars",
        distance: "2.7b",
        gravity: "11.5",
        overview:
        "Mars is the fourth planet and the furthest terrestrial planet from the Sun.",
        Distancetoearth: "4.5658b",
        Distancetosun: "4.4735b",
        price: "2.8"),
    ErthModel(
        image: "assets/images/mercury.png",
        view_image: "assets/images/mercury1.png",
        name: "mercury",
        distance: "384.4k",
        gravity: "1.62",
        overview:
        "Because Mercury is very close to the Sun, the intensity of sunlight on its surface is between 4.59 and 10.61 times the solar constant (amount of the Sun's energy received at 1 astronomical unit,",
        Distancetoearth: "384,4k",
        Distancetosun: "93m",
        price: "2.8"),
    ErthModel(
        image: "assets/images/moon.png",
        view_image: "assets/images/moon1.png",
        name: "moon",
        distance: "149.6m",
        gravity: "9.698",
        overview:
        " The Moon orbits Earth at an average distance of 384,400 km (238,900 mi), or about 30 times Earth's diameter.  ",
        Distancetoearth: "0",
        Distancetosun: "147.24m",
        price: "2.8"),
    ErthModel(
        image: "assets/images/neptune.png",
        view_image: "assets/images/neptune1.png",
        name: "neptune",
        distance: "130.36m",
        gravity: "3.7",
        overview:
        "Neptune is not visible to the unaided eye and is the only planet in the Solar System found by mathematical prediction rather than by empirical observation.",
        Distancetoearth: "147.24m",
        Distancetosun: "58.957m",
        price: "2.8"),
    ErthModel(
        image: "assets/images/jupiter.png",
        view_image: "assets/images/jupiter1.png",
        name: "Jupiter",
        distance: "778.3m",
        gravity: "27.92",
        overview:
        " Jupiter is primarily composed of hydrogen (90% by volume), followed by helium, which constitutes a quarter of its mass and a tenth of its volume.",
        Distancetoearth: "799.56m",
        Distancetosun: "740.7",
        price: "2.8"),
  ].obs;
  Rx<ErthModel> E1 = ErthModel().obs;
}