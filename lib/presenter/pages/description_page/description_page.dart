import 'package:flutter/material.dart';
import 'package:noname_layout_study_5/presenter/pages/description_page/widgets/description_page_widgets.dart';
import 'package:noname_layout_study_5/utils/constants.dart';
import 'package:noname_layout_study_5/utils/sample_data.dart';

class DescriptionPage extends StatelessWidget {
  final RealEstate realEstate;

  const DescriptionPage({Key? key, required this.realEstate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(realEstate.image),
                  TopButtonBar(realEstate: realEstate),
                ],
              ),
              const SizedBox(height: paddingSize),
              GeneralInformation(realEstate: realEstate),
              HouseInformation(realEstate: realEstate),
              const SizedBox(height: paddingSize),
              DescriptionText(realEstate: realEstate),
            ],
          ),
        ),
      ),
    );
  }
}
