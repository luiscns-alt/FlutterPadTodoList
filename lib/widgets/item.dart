import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final IconData icon;
  final String text;
  final bool initialValue;

  const Item(
      {super.key,
      required this.icon,
      required this.text,
      this.initialValue = false});

  @override
  ItemState createState() => ItemState();
}

class ItemState extends State<Item> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.blue,
          width: 2.0,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(widget.icon, color: Colors.blue, size: 24.0),
            const SizedBox(width: 8.0),
            Expanded(
              child: Text(
                widget.text,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  height: 1.0, // 100% line height
                ),
              ),
            ),
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
