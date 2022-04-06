import 'package:flutter/material.dart';

const Widget horizontalSpaceTiny = SizedBox(
  width: 5.0,
);
const Widget horizontalSpaceSmall = SizedBox(
  width: 10.0,
);
const Widget horizontalSpaceRegular = SizedBox(
  width: 18.0,
);
const Widget horizontalSpaceMedium = SizedBox(
  width: 25.0,
);
const Widget horizontalSpaceLarge = SizedBox(
  width: 50.0,
);

const Widget verticalSpaceTiny = SizedBox(
  width: 5.0,
);
const Widget verticalSpaceSmall = SizedBox(
  width: 10.0,
);
const Widget verticalSpaceRegular = SizedBox(
  width: 18.0,
);
const Widget verticalSpaceMedium = SizedBox(
  width: 25.0,
);
const Widget verticalSpaceLarge = SizedBox(
  width: 50.0,
);

//screen size helpers

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

//percentage between 0:1
double screenHeightPercentage(BuildContext context, {double percentage = 1}) =>
    screenHeight(context) * percentage;

double screenWidthPercentage(BuildContext context, {double percentage = 1}) =>
    screenWidth(context) * percentage;
