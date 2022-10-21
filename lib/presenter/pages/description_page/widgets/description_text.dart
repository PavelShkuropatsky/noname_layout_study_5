part of 'description_page_widgets.dart';

class DescriptionText extends StatelessWidget {
  final RealEstate realEstate;

  const DescriptionText({Key? key, required this.realEstate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        realEstate.description,
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
