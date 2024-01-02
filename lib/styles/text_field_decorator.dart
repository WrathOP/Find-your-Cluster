import 'package:find_your_cluster/styles/text_style.dart';
import 'package:flutter/material.dart';

textFieldDecorator({required String label, Color color = Colors.black}) {
  var decorator = InputDecoration(
    filled: true,
    label: Text(label, style: bodyStyle(color: color)),
    hoverColor: Colors.blue.shade100,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: const BorderSide(
        color: Color(0xff0d406a),
        width: 1.0,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(
        color: Color(0xff0d406c),
        width: 2.0,
      ),
    ),
  );
  return decorator;
}
