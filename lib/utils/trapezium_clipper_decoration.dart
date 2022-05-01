import 'package:flutter/material.dart';
import 'package:flutter_folding_cell_module/utils/trapezium_clipper.dart';

Widget trapeziumClippers(BuildContext context, String price) {
  return ClipPath(
    clipper: TrapeziumClipper(),
    child: Container(
      decoration: const BoxDecoration(
      color: Colors.pink
      ),
      padding: const EdgeInsets.fromLTRB(3, 4, 8.0, 2),
      width: MediaQuery.of(context).size.width * 1.7 / 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 3 / 6),
            child: Text(
              price,
              softWrap: true,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );
}
