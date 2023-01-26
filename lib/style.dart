import 'package:flutter/material.dart';

const LargeTextSize = 26.0;
const MediumTextSize = 20.0;
const SmallTextSize = 12.0;
const BodyTextSize = 16.0;

const FontFamilyNameDefault = 'Montserrat';

const Color TextColorDark = Colors.black;
const Color TextColorLight = Colors.white;
const Color TextColorAccent = Colors.red;
const Color TextColorFaint = Colors.yellow;
const Color TextColorGrey = Colors.grey;

const DefaultPaddingHorizontal = 12.0;

const AppBarTextStyle = TextStyle(
    fontFamily: FontFamilyNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: MediumTextSize,
    color: TextColorLight);

const TitleTextStyle = TextStyle(
    fontFamily: FontFamilyNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: LargeTextSize,
    color: TextColorDark);

const SubtitleTextStyle = TextStyle(
    fontFamily: FontFamilyNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: MediumTextSize,
    color: TextColorAccent);

const CaptionTextStyle = TextStyle(
    fontFamily: FontFamilyNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: SmallTextSize,
    color: TextColorFaint);

const BodyTextStyle = TextStyle(
    fontFamily: FontFamilyNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: BodyTextSize,
    color: TextColorDark);
