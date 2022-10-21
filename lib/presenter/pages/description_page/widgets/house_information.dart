part of 'description_page_widgets.dart';

class HouseInformation extends StatelessWidget {
  final RealEstate realEstate;

  const HouseInformation({
    Key? key,
    required this.realEstate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: paddingSize),
        Padding(
          padding: padding,
          child: Text("House Information", style: themeData.textTheme.headline4),
        ),
        const SizedBox(height: paddingSize),
        _HouseInformationBar(realEstate: realEstate),
      ],
    );
  }
}

class _HouseInformationBar extends StatelessWidget {
  final RealEstate realEstate;

  const _HouseInformationBar({
    Key? key,
    required this.realEstate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _HouseInformationBarItem(contentText: realEstate.area.toString(), captionText: "Square Foot"),
          _HouseInformationBarItem(contentText: realEstate.bedrooms.toString(), captionText: "Bedrooms"),
          _HouseInformationBarItem(contentText: realEstate.bathrooms.toString(), captionText: "Bathrooms"),
          _HouseInformationBarItem(contentText: realEstate.garage.toString(), captionText: "Garage"),
        ],
      ),
    );
  }
}

class _HouseInformationBarItem extends StatelessWidget {
  final String contentText;
  final String captionText;

  const _HouseInformationBarItem({
    Key? key,
    required this.contentText,
    required this.captionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(left: paddingSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BorderBox(
            width: 80,
            height: 80,
            child: Text(contentText, style: themeData.textTheme.headline3),
          ),
          const SizedBox(height: 10),
          Text(captionText, style: themeData.textTheme.headline5),
        ],
      ),
    );
  }
}
