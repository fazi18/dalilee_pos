import 'package:flutter/widgets.dart';

addHeight(double h) {
  return SizedBox(height: h);
}

addWidth(double w) {
  return SizedBox(width: w);
}

height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
