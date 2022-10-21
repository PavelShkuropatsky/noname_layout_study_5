part of 'description_page_widgets.dart';

class TopButtonBar extends StatefulWidget {
  final RealEstate realEstate;

  const TopButtonBar({
    super.key,
    required this.realEstate,
  });

  @override
  State<TopButtonBar> createState() => _TopButtonBarState();
}

class _TopButtonBarState extends State<TopButtonBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(paddingSize),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BorderBox(
            width: 50,
            height: 50,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_sharp),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          BorderBox(
            width: 50,
            height: 50,
            child: IconButton(
              icon: (widget.realEstate.favorite
                  ? const Icon(Icons.favorite, color: Colors.red)
                  : const Icon(Icons.favorite_border)),
              onPressed: () {
                setState(() => widget.realEstate.favorite = !widget.realEstate.favorite);
              },
            ),
          ),
        ],
      ),
    );
  }
}
