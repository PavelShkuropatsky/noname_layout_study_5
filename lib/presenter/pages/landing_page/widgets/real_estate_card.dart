part of "landing_page_widgets.dart";

class RealEstateCard extends StatefulWidget {
  final RealEstate realEstate;

  const RealEstateCard({Key? key, required this.realEstate}) : super(key: key);

  @override
  State<RealEstateCard> createState() => _RealEstateCardState();
}

class _RealEstateCardState extends State<RealEstateCard> {
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DescriptionPage(realEstate: widget.realEstate),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Stack(
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(20), child: Image.asset(widget.realEstate.image)),
              Positioned(
                top: 15,
                right: 15,
                child: BorderBox(
                  width: 50,
                  height: 50,
                  child: IconButton(
                    icon: widget.realEstate.favorite
                        ? const Icon(Icons.favorite, color: Colors.red)
                        : const Icon(Icons.favorite_border, color: blackColor),
                    onPressed: () {
                      setState(() => widget.realEstate.favorite = !widget.realEstate.favorite);
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                Text(widget.realEstate.amountStr, style: themeData.textTheme.headline1),
                const SizedBox(width: 10),
                Text(widget.realEstate.address, style: themeData.textTheme.bodyText2),
              ],
            ),
          ),
          Text(
            "${widget.realEstate.bedrooms} bedrooms / "
            "${widget.realEstate.bathrooms} bathrooms / "
            "${widget.realEstate.area} sqft",
            style: themeData.textTheme.headline5,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
