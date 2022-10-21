part of 'description_page_widgets.dart';

class GeneralInformation extends StatelessWidget {
  final RealEstate realEstate;

  const GeneralInformation({Key? key, required this.realEstate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Container(
      padding: padding,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(realEstate.amountStr, style: themeData.textTheme.headline1),
              const SizedBox(height: 5),
              Text(realEstate.postAgeStr, style: themeData.textTheme.bodyText2)
              ,
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Map"),
                duration: Duration(milliseconds: 300),
              )),
              borderRadius: BorderRadius.circular(15),
              child: BorderBox(
                height: 50,
                backgroundColor: greyColor.withOpacity(0.03),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(realEstate.address, style: themeData.textTheme.bodyText1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
