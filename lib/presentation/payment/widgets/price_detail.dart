import 'package:flutter/material.dart';

class PriceDetail extends StatelessWidget {
  const PriceDetail(
      {Key? key,
      required this.label,
      required this.value,
      this.color = Colors.black})
      : super(key: key);
  final String label;
  final String value;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          ),
          Text(
            value,
            style: TextStyle(
                fontSize: 18, color: color, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
