import 'package:flutter/material.dart';
import 'package:smart_search/app/core/models/category_model.dart';
import 'package:smart_search/app/core/responsive/responsive_sizer/responsive_sizer.dart';
import 'package:smart_search/app/core/shared_widget/scaffold_wrapper.dart';
import 'package:smart_search/app/features/home/presentation/widgets/categort_cart_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categoryList = [
    CategoryModel(
        title: "Air System Components", image: "assets/images/part1.png"),
    CategoryModel(title: "Brakes", image: "assets/images/part2.png"),
    CategoryModel(
        title: "Cab, Body & Collision", image: "assets/images/part3.png"),
    CategoryModel(
        title: "Chemicals, Lubricants & Cleaning",
        image: "assets/images/part4.png"),
    CategoryModel(title: "Drive Systems", image: "assets/images/part5.png"),
    CategoryModel(title: "Engine Components", image: "assets/images/part6.png"),
    CategoryModel(title: "Equipments Parts", image: "assets/images/part7.png"),
    CategoryModel(title: "Exhaust", image: "assets/images/part8.png"),
    CategoryModel(
        title: "Hardware & Fitting", image: "assets/images/part9.png"),
    CategoryModel(
        title: "Hitching, Devices & Load Securement",
        image: "assets/images/part10.png"),
    CategoryModel(
        title: "Lightning & Electrial", image: "assets/images/part11.png"),
    CategoryModel(title: "Miscellaneous", image: "assets/images/part6.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return ScaffoldWrapper(
            appBarTitle: "HEAVY-DUTY TRUCK & TRAILER PARTS​",
            body: SizedBox(
              width: 100.w,
              child: Wrap(
                alignment: WrapAlignment.center,
                children: categoryList.map((e) {
                  return CategoryCartWidget(model: e);
                }).toList(),
              ),
            ),
          );
        },
        context: context);
  }
}
