import 'package:flutter/material.dart';

/// [TextStyle] for text notes
const kNoteTextLight = TextStyle(
 // color: Color(0x99000000),
  fontSize: defaultTitleNoteCardTextSize,
  height: 1.3125,
);

/// [TextStyle] for note title in a preview card
const kCardTitleLight = TextStyle(
  //color: Color(0xFF202124),
  fontSize: defaultTitleNoteCardTextSize,
  height: 19 / 16,
  fontWeight: FontWeight.w500,
);

//Text Style
const TextStyle defaultBodyTextStyle = TextStyle(
  fontSize: defaultBodyTextSize,
  fontWeight: FontWeight.w600
);

//Font Sizing
const double defaultBodyTextSize = 13;
const double defaultBodyTitleTextSize =15;
const double defaultNoteBodyTextSize = 13;
const double defaultTitleNoteCardTextSize = 16;
const double defaultTextCloseSize = 13;