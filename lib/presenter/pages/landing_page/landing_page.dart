import 'package:flutter/material.dart';
import 'package:noname_layout_study_5/presenter/comon_widgets/border_box.dart';
import 'package:noname_layout_study_5/presenter/pages/landing_page/widgets/landing_page_widgets.dart';
import 'package:noname_layout_study_5/utils/constants.dart';
import 'package:noname_layout_study_5/utils/sample_data.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: paddingSize),
                  Padding(
                    padding: padding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BorderBox(
                            width: 50,
                            height: 50,
                            child: IconButton(
                              icon: const Icon(Icons.menu, color: blackColor),
                              onPressed: () {},
                            )),
                        BorderBox(
                            width: 50,
                            height: 50,
                            child: IconButton(
                              icon: const Icon(Icons.settings, color: blackColor),
                              onPressed: () {},
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  Padding(
                    padding: padding,
                    child: Text("City", style: themeData.textTheme.bodyText2),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: padding,
                    child: Text("San Francisco", style: themeData.textTheme.headline1),
                  ),
                  const Padding(
                    padding: padding,
                    child: Divider(height: paddingSize, color: greyColor),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: choiceOptions.map((e) => ChoiceOption(text: e)).toList(),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Expanded(
                    child: Padding(
                      padding: padding,
                      child: ListView.builder(
                        itemCount: RealEstate.realEstates.length,
                        itemBuilder: (context, index) => RealEstateCard(realEstate: RealEstate.realEstates[index]),
                        physics: const BouncingScrollPhysics(),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                width: size.width,
                child: Center(
                  child: OptionButton(
                    icon: Icons.map_rounded,
                    text: "Map View",
                    width: size.width*0.35,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
