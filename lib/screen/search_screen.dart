import 'package:flutter/material.dart';
import 'package:weather_riverpord/constants/app_colors.dart';
import 'package:weather_riverpord/constants/text_style.dart';
import 'package:weather_riverpord/views/famous_cities_view.dart';
import 'package:weather_riverpord/views/gradient_container.dart';
import 'package:weather_riverpord/widgets/round_text_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Text(
                     "Pick Location",
                     style: TextStyles.h1,
                   ),
                   SizedBox(
                     height: 30,
                   ),
                   Text(
                     "Find the area or city that want to know the detailed weather info at this time",
                     style: TextStyles.subtitleText,
                     textAlign: TextAlign.center,
                   ),
                 ],
              ),
          const SizedBox(
            height: 40,
          ),
           Row(
              children: [
                 Expanded(
                   child: RoundTextField(
                     controller: _controller,

                   ),
                 ),

                  SizedBox(height: 20,),
                   LocationIcon(),
              ],
           ),
             SizedBox(height: 25,
             ),
           //Famous Cities View//
            FamousCitiesView()


        ],
      ),
    );
  }
}

 class LocationIcon extends StatelessWidget {
   const LocationIcon({super.key});

   @override
   Widget build(BuildContext context) {
     return Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.accentBlue,
          ),
        child: Icon(
            Icons.location_on_outlined,
           color: Colors.white,
        ),
     );
   }
 }

