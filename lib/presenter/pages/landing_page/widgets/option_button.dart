part of "landing_page_widgets.dart";

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;

  const OptionButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: darkBlueColor,
          foregroundColor: whiteColor.withAlpha(55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Icon(icon, color: whiteColor),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(color: whiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
