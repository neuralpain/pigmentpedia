
//                       http://tx4.us/nbs-iscc.htm
//                         NBS/ISCC Color System

// Copyright 2003 Voluntocracy.  Permission is granted to copy and
// distribute modified or unmodified versions of this color dictionary
// provided the copyright notice and this permission notice are preserved
// on all copies and the entire such work is distributed under the terms
// of a permission notice identical to this one.

// "Pink" and "brown" are used instead of the more logical "pale red" and
// "dark orange".

// http://www.anthus.com/Colors/Cent.html by David A. Mundie, converted
// the NBS Centroid colors from Munsell to CIE XYZ, then converted to Mac
// QuickDraw RGB.  The colors were visibly biased towards pink and had
// duplications.

// John Foster reconverted supplied Munsell values via Munsell software
// downloaded from www.gretagmacbeth.com <http://www.gretagmacbeth.com>
// directly to RGB, and tried to resolve some duplicates.  Some of these
// don't even look right, because some of the bright colors are on the
// dark fringes with less chroma and are not centered and high up on the
// hue curves.  Many of the original Munsell values (noted) are outside
// the RGB gamut, and have been adjusted to the closest brightest RGB
// value by changing chroma until 0 or 255 is reached in one out of
// bounds RGB component.  Guesses were made in a few cases (noted) where
// the color was still illogical compared to the name.

#let ISCC-NBS = (
  "Vivid-Pink": rgb("#FFB5BA"),
  "Strong-Pink": rgb("#EA9399"),
  "Deep-Pink": rgb("#E4717A"),
  "Light-Pink": rgb("#F9CCCA"),
  "Moderate-Pink": rgb("#DEA5A4"),
  "Dark-Pink": rgb("#C08081"),
  "Pale-Pink": rgb("#EAD8D7"),
  "Grayish-Pink": rgb("#C4AEAD"),
  "Pinkish-White": rgb("#EAE3E1"),
  "Pinkish-Gray": rgb("#C1B6B3"),
  "Vivid-Red": rgb("#BE0032"),
  "Strong-Red": rgb("#BC3F4A"),
  "Deep-Red": rgb("#841B2D"),
  "Very-Deep-Red": rgb("#5C0923"),
  "Moderate-Red": rgb("#AB4E52"),
  "Dark-Red": rgb("#722F37"),
  "Very-Dark-Red": rgb("#3F1728"),
  "Light-Grayish-Red": rgb("#AD8884"),
  "Grayish-Red": rgb("#905D5D"),
  "Dark-Grayish-Red": rgb("#543D3F"),
  "Blackish-Red": rgb("#2E1D21"),
  "Reddish-Gray": rgb("#8F817F"),
  "Dark-Reddish-Gray": rgb("#5C504F"),
  "Reddish-Black": rgb("#282022"),
  "Vivid-Yellowish-Pink": rgb("#FFB7A5"),
  "Strong-Yellowish-Pink": rgb("#F99379"),
  "Deep-Yellowish-Pink": rgb("#E66721"),
  "Light-Yellowish-Pink": rgb("#F4C2C2"),
  "Moderate-Yellowish-Pink": rgb("#D9A6A9"),
  "Dark-Yellowish-Pink": rgb("#C48379"),
  "Pale-Yellowish-Pink": rgb("#ECD5C5"),
  "Grayish-Yellowish-Pink": rgb("#C7ADA3"),
  "Brownish-Pink": rgb("#C2AC99"),
  "Vivid-Reddish-Orange": rgb("#E25822"),
  "Strong-Reddish-Orange": rgb("#D9603B"),
  "Deep-Reddish-Orange": rgb("#AA381E"),
  "Moderate-Reddish-Orange": rgb("#CB6D51"),
  "Dark-Reddish-Orange": rgb("#9E4732"),
  "Grayish-Reddish-Orange": rgb("#B4745E"),
  "Strong-Reddish-Brown": rgb("#882D17"),
  "Deep-Reddish-Brown": rgb("#56070C"),
  "Light-Reddish-Brown": rgb("#A87C6D"),
  "Moderate-Reddish-Brown": rgb("#79443B"),
  "Dark-Reddish-Brown": rgb("#3E1D1E"),
  "Light-Grayish-Reddish-Brown": rgb("#977F73"),
  "Grayish-Reddish-Brown": rgb("#674C47"),
  "Dark-Grayish-Reddish-Brown": rgb("#43302E"),
  "Vivid-Orange": rgb("#F38400"),
  "Brilliant-Orange": rgb("#FD943F"),
  "Strong-Orange": rgb("#ED872D"),
  "Deep-Orange": rgb("#BE6516"),
  "Light-Orange": rgb("#FAB57F"),
  "Moderate-Orange": rgb("#D99058"),
  "Brownish-Orange": rgb("#AE6938"),
  "Strong-Brown": rgb("#80461B"),
  "Deep-Brown": rgb("#593319"),
  "Light-Brown": rgb("#A67B5B"),
  "Moderate-Brown": rgb("#6F4E37"),
  "Dark-Brown": rgb("#422518"),
  "Light-Grayish-Brown": rgb("#958070"),
  "Grayish-Brown": rgb("#635147"),
  "Dark-Grayish-Brown": rgb("#3E322C"),
  "Light-Brownish-Gray": rgb("#8E8279"),
  "Brownish-Gray": rgb("#5B504F"),
  "Brownish-Black": rgb("#28201C"),
  "Vivid-Orange-Yellow": rgb("#F6A600"),
  "Brilliant-Orange-Yellow": rgb("#FFC14F"),
  "Strong-Orange-Yellow": rgb("#EAA221"),
  "Deep-Orange-Yellow": rgb("#C98500"),
  "Light-Orange-Yellow": rgb("#FBC97F"),
  "Moderate-Orange-Yellow": rgb("#E3A857"),
  "Dark-Orange-Yellow": rgb("#BE8A3D"),
  "Pale-Orange-Yellow": rgb("#FAD6A5"),
  "Strong-Yellowish-Brown": rgb("#996515"),
  "Deep-Yellowish-Brown": rgb("#654522"),
  "Light-Yellowish-Brown": rgb("#C19A6B"),
  "Moderate-Yellowish-Brown": rgb("#826644"),
  "Dark-Yellowish-Brown": rgb("#4B3621"),
  "Light-Grayish-Yellowish-Brown": rgb("#AE9B82"),
  "Grayish-Yellowish-Brown": rgb("#7E6D5A"),
  "Dark-Grayish-Yellowish-Brown": rgb("#483C32"),
  "Vivid-Yellow": rgb("#F3C300"),
  "Brilliant-Yellow": rgb("#FADA5E"),
  "Strong-Yellow": rgb("#D4AF37"),
  "Deep-Yellow": rgb("#AF8D13"),
  "Light-Yellow": rgb("#F8DE7E"),
  "Moderate-Yellow": rgb("#C9AE5D"),
  "Dark-Yellow": rgb("#AB9144"),
  "Pale-Yellow": rgb("#F3E5AB"),
  "Grayish-Yellow": rgb("#C2B280"),
  "Dark-Grayish-Yellow": rgb("#A18F60"),
  "Yellowish-White": rgb("#F0EAD6"),
  "Yellowish-Gray": rgb("#BFB8A5"),
  "Light-Olive-Brown": rgb("#967117"),
  "Moderate-Olive-Brown": rgb("#6C541E"),
  "Dark-Olive-Brown": rgb("#3B3121"),
  "Vivid-Greenish-Yellow": rgb("#DCD300"),
  "Brilliant-Greenish-Yellow": rgb("#E9E450"),
  "Strong-Greenish-Yellow": rgb("#BEB72E"),
  "Deep-Greenish-Yellow": rgb("#9B9400"),
  "Light-Greenish-Yellow": rgb("#EAE679"),
  "Moderate-Greenish-Yellow": rgb("#B9B459"),
  "Dark-Greenish-Yellow": rgb("#98943E"),
  "Pale-Greenish-Yellow": rgb("#EBE8A4"),
  "Grayish-Greenish-Yellow": rgb("#B9B57D"),
  "Light-Olive": rgb("#867E36"),
  "Moderate-Olive": rgb("#665D1E"),
  "Dark-Olive": rgb("#403D21"),
  "Light-Grayish-Olive": rgb("#8C8767"),
  "Grayish-Olive": rgb("#5B5842"),
  "Dark-Grayish-Olive": rgb("#363527"),
  "Light-Olive-Gray": rgb("#8A8776"),
  "Olive-Gray": rgb("#57554C"),
  "Olive-Black": rgb("#25241D"),
  "Vivid-Yellow-Green": rgb("#8DB600"),
  "Brilliant-Yellow-Green": rgb("#BDDA57"),
  "Strong-Yellow-Green": rgb("#7E9F2E"),
  "Deep-Yellow-Green": rgb("#467129"),
  "Light-Yellow-Green": rgb("#C9DC89"),
  "Moderate-Yellow-Green": rgb("#8A9A5B"),
  "Pale-Yellow-Green": rgb("#DADFB7"),
  "Grayish-Yellow-Green": rgb("#8F9779"),
  "Strong-Olive-Green": rgb("#404F00"),
  "Deep-Olive-Green": rgb("#232F00"),
  "Moderate-Olive-Green": rgb("#4A5D23"),
  "Dark-Olive-Green": rgb("#2B3D26"),
  "Grayish-Olive-Green": rgb("#515744"),
  "Dark-Grayish-Olive-Green": rgb("#31362B"),
  "Vivid-Yellowish-Green": rgb("#27A64C"),
  "Brilliant-Yellowish-Green": rgb("#83D37D"),
  "Strong-Yellowish-Green": rgb("#44944A"),
  "Deep-Yellowish-Green": rgb("#00622D"),
  "Very-Deep-Yellowish-Green": rgb("#003118"),
  "Very-Light-Yellowish-Green": rgb("#B6E5AF"),
  "Light-Yellowish-Green": rgb("#93C592"),
  "Moderate-Yellowish-Green": rgb("#679267"),
  "Dark-Yellowish-Green": rgb("#355E3B"),
  "Very-Dark-Yellowish-Green": rgb("#173620"),
  "Vivid-Green": rgb("#008856"),
  "Brilliant-Green": rgb("#3EB489"),
  "Strong-Green": rgb("#007959"),
  "Deep-Green": rgb("#00543D"),
  "Very-Light-Green": rgb("#8ED1B2"),
  "Light-Green": rgb("#6AAB8E"),
  "Moderate-Green": rgb("#3B7861"),
  "Dark-Green": rgb("#1B4D3E"),
  "Very-Dark-Green": rgb("#1C352D"),
  "Very-Pale-Green": rgb("#C7E6D7"),
  "Pale-Green": rgb("#8DA399"),
  "Grayish-Green": rgb("#5E716A"),
  "Dark-Grayish-Green": rgb("#3A4B47"),
  "Blackish-Green": rgb("#1A2421"),
  "Greenish-White": rgb("#DFEDE8"),
  "Light-Greenish-Gray": rgb("#B2BEB5"),
  "Greenish-Gray": rgb("#7D8984"),
  "Dark-Greenish-Gray": rgb("#4E5755"),
  "Greenish-Black": rgb("#1E2321"),
  "Vivid-Bluish-Green": rgb("#008882"),
  "Brilliant-Bluish-Green": rgb("#00A693"),
  "Strong-Bluish-Green": rgb("#007A74"),
  "Deep-Bluish-Green": rgb("#00443F"),
  "Very-Light-Bluish-Green": rgb("#96DED1"),
  "Light-Bluish-Green": rgb("#66ADA4"),
  "Moderate-Bluish-Green": rgb("#317873"),
  "Dark-Bluish-Green": rgb("#004B49"),
  "Very-Dark-Bluish-Green": rgb("#002A29"),
  "Vivid-Greenish-Blue": rgb("#0085A1"),
  "Brilliant-Greenish-Blue": rgb("#239EBA"),
  "Strong-Greenish-Blue": rgb("#007791"),
  "Deep-Greenish-Blue": rgb("#2E8495"),
  "Very-Light-Greenish-Blue": rgb("#9CD1DC"),
  "Light-Greenish-Blue": rgb("#66AABC"),
  "Moderate-Greenish-Blue": rgb("#367588"),
  "Dark-Greenish-Blue": rgb("#004958"),
  "Very-Dark-Greenish-Blue": rgb("#002E3B"),
  "Vivid-Blue": rgb("#00A1C2"),
  "Brilliant-Blue": rgb("#4997D0"),
  "Strong-Blue": rgb("#0067A5"),
  "Deep-Blue": rgb("#00416A"),
  "Very-Light-Blue": rgb("#A1CAF1"),
  "Light-Blue": rgb("#70A3CC"),
  "Moderate-Blue": rgb("#436B95"),
  "Dark-Blue": rgb("#00304E"),
  "Very-Pale-Blue": rgb("#BCD4E6"),
  "Pale-Blue": rgb("#91A3B0"),
  "Grayish-Blue": rgb("#536878"),
  "Dark-Grayish-Blue": rgb("#36454F"),
  "Blackish-Blue": rgb("#202830"),
  "Bluish-White": rgb("#E9E9ED"),
  "Light-Bluish-Gray": rgb("#B4BCC0"),
  "Bluish-Gray": rgb("#81878B"),
  "Dark-Bluish-Gray": rgb("#51585E"),
  "Bluish-Black": rgb("#202428"),
  "Vivid-Purplish-Blue": rgb("#30267A"),
  "Brilliant-Purplish-Blue": rgb("#6C79B8"),
  "Strong-Purplish-Blue": rgb("#545AA7"),
  "Deep-Purplish-Blue": rgb("#272458"),
  "Very-Light-Purplish-Blue": rgb("#B3BCE2"),
  "Light-Purplish-Blue": rgb("#8791BF"),
  "Moderate-Purplish-Blue": rgb("#4E5180"),
  "Dark-Purplish-Blue": rgb("#252440"),
  "Very-Pale-Purplish-Blue": rgb("#C0C8E1"),
  "Pale-Purplish-Blue": rgb("#8C92AC"),
  "Grayish-Purplish-Blue": rgb("#4C516D"),
  "Vivid-Violet": rgb("#9065CA"),
  "Brilliant-Violet": rgb("#7E73B8"),
  "Strong-Violet": rgb("#604E97"),
  "Deep-Violet": rgb("#32174D"),
  "Very-Light-Violet": rgb("#DCD0FF"),
  "Light-Violet": rgb("#8C82B6"),
  "Moderate-Violet": rgb("#604E81"),
  "Dark-Violet": rgb("#2F2140"),
  "Very-Pale-Violet": rgb("#C4C3DD"),
  "Pale-Violet": rgb("#9690AB"),
  "Grayish-Violet": rgb("#554C69"),
  "Vivid-Purple": rgb("#9A4EAE"),
  "Brilliant-Purple": rgb("#D399E6"),
  "Strong-Purple": rgb("#875692"),
  "Deep-Purple": rgb("#602F6B"),
  "Very-Deep-Purple": rgb("#401A4C"),
  "Very-Light-Purple": rgb("#D5BADB"),
  "Light-Purple": rgb("#B695C0"),
  "Moderate-Purple": rgb("#86608E"),
  "Dark-Purple": rgb("#563C5C"),
  "Very-Dark-Purple": rgb("#301934"),
  "Very-Pale-Purple": rgb("#D6CADD"),
  "Pale-Purple": rgb("#AA98A9"),
  "Grayish-Purple": rgb("#796878"),
  "Dark-Grayish-Purple": rgb("#50404D"),
  "Blackish-Purple": rgb("#291E29"),
  "Purplish-White": rgb("#E8E3E5"),
  "Light-Purplish-Gray": rgb("#BFB9BD"),
  "Purplish-Gray": rgb("#8B8589"),
  "Dark-Purplish-Gray": rgb("#5D555B"),
  "Purplish-Black": rgb("#242124"),
  "Vivid-Reddish-Purple": rgb("#870074"),
  "Strong-Reddish-Purple": rgb("#9E4F88"),
  "Deep-Reddish-Purple": rgb("#702963"),
  "Very-Deep-Reddish-Purple": rgb("#54194E"),
  "Light-Reddish-Purple": rgb("#B784A7"),
  "Moderate-Reddish-Purple": rgb("#915C83"),
  "Dark-Reddish-Purple": rgb("#5D3954"),
  "Very-Dark-Reddish-Purple": rgb("#341731"),
  "Pale-Reddish-Purple": rgb("#AA8A9E"),
  "Grayish-Reddish-Purple": rgb("#836479"),
  "Brilliant-Purplish-Pink": rgb("#FFC8D6"),
  "Strong-Purplish-Pink": rgb("#E68FAC"),
  "Deep-Purplish-Pink": rgb("#DE6FA1"),
  "Light-Purplish-Pink": rgb("#EFBBCC"),
  "Moderate-Purplish-Pink": rgb("#D597AE"),
  "Dark-Purplish-Pink": rgb("#C17E91"),
  "Pale-Purplish-Pink": rgb("#E8CCD7"),
  "Grayish-Purplish-Pink": rgb("#C3A6B1"),
  "Vivid-Purplish-Red": rgb("#CE4676"),
  "Strong-Purplish-Red": rgb("#B3446C"),
  "Deep-Purplish-Red": rgb("#78184A"),
  "Very-Deep-Purplish-Red": rgb("#54133B"),
  "Moderate-Purplish-Red": rgb("#A8516E"),
  "Dark-Purplish-Red": rgb("#673147"),
  "Very-Dark-Purplish-Red": rgb("#38152C"),
  "Light-Grayish-Purplish-Red": rgb("#AF868E"),
  "Grayish-Purplish-Red": rgb("#915F6D"),
  "White": rgb("#F2F3F4"),
  "Light-Gray": rgb("#B9B8B5"),
  "Medium-Gray": rgb("#848482"),
  "Dark-Gray": rgb("#555555"),
  "Black": rgb("#222222"),
)
