import 'package:flutter/material.dart';

class ItemConstruction extends StatefulWidget {
  final String name;
  final int index;
  const ItemConstruction({Key? key, required this.name, required this.index})
      : super(key: key);

  @override
  State<ItemConstruction> createState() => _ItemConstructionState();
}

class _ItemConstructionState extends State<ItemConstruction> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          selected = widget.index;
        });
      },
      child: Container(
        height: 60.0,
        margin: const EdgeInsets.only(right: 30, left: 30, bottom: 16),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: (selected == widget.index)
                ? Color(0xffFFB19D)
                : Color(0xffE2E2E0),
          ),
        ),
        child: Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                widget.name,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: (selected == widget.index)
                        ? Color(0xff525464)
                        : Color(0xff838391)),
              ),
            ),
            const Expanded(child: SizedBox()),
            Container(
              alignment: Alignment.centerRight,
              width: 60.0,
              color: (selected == widget.index)
                  ? Color(0xffFFB19D)
                  : Color(0xffF7F7F7),
              child: Center(
                child: Icon(
                  (selected == widget.index) ? Icons.check : Icons.add,
                  color: (selected == widget.index)
                      ? Colors.white
                      : Color(0xff818181),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
