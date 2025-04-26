/*
  File: display.typ
  Author: neuralpain
  Date Modified: 2025-01-12

  Description: Module for collecting and
  displaying pigments to the user.
*/

#import "private.typ": *
#import "pigments.typ": *
#import "text-contrast.typ": get-contrast-color

/// Display a single pigment on a page.
///
/// This function has been made private and integrated
/// within `view-pigments()` as to prevent confusion with
/// the end users.
///
/// ```typ
/// #view-pigment(RAL.Chocolate-Brown)
/// ```
///
/// - color (color): Pigment color value.
/// - bg (color): The color of the page background. This is
///   used to choose a contrast color for the text based on
///   the background color.
/// -> content
#let view-pigment(color, bg: white) = {
  pgmt-page-setup(
    bg: bg,
    numbering: false,
    align(center + horizon)[
      #rect(
        height: 60%,
        width: 80%,
        radius: 25pt,
        fill: color,
        text(fill: get-contrast-color(color), size: 4em, weight: "bold", raw(upper(color.to-hex()))),
      )
    ],
  )
}

/// Search through the `scope` to find the color to pigment
/// to display for the user.
///
/// - pgmt-group (dictionary): The pigment group to search from.
/// -> content
#let display-pigments(pgmt-group, bg) = {
  // pigment name formatting
  let output-caps = false
  let output-hyphen = false

  for (name, color) in pgmt-group {
    if name == "output" {
      output-caps = color.caps
      output-hyphen = color.hyphen
      continue
    }

    if (type(color) == "color") {
      block(
        ..colorbox-block-properties,
        stroke: 2pt + color,
        stack(
          spacing: 5mm,
          rect(..colorbox, fill: color),
          format-pigment-name(name, output-caps, output-hyphen),
          raw(upper(color.to-hex())),
        ),
      )
    } else {
      block(
        ..colorbox-block-properties,
        stack(
          rect(
            radius: 100%,
            width: 100%,
            stroke: 1pt + get-contrast-color(bg),
            pad(
              y: 8mm,
              align(center)[
                #format-pigment-name(name, output-caps, output-hyphen)
              ],
            ),
          ),
        ),
      )
      display-pigments(color, bg)
    }
  }
}

/// Show a visual list of colors to select from.
///
/// ```typ
/// #view-pigments(ncs)
/// #view-pigments(zhongguo.en)
/// ```
///
/// Display a single pigment on a page.
///
/// ```typ
/// #view-pigments(zhongguo.en.blue.violet-blue)
/// ```
///
/// - scope (dictionary, color): Pigment group or color to display.
/// - bg (color): The color of the page background. This is
///   used to choose a contrast color for the text based on
///   the background color.
/// -> content
#let view-pigments(scope, bg: white) = {
  if type(bg) != "color" {
    pgmt-error.bg-not-a-color
    return
  }

  // catch any pigments entered by the user
  // this is an anticipated user error turned feature
  if type(scope) == "color" {
    view-pigment(scope, bg: bg)
    return
  }

  if type(scope) != "dictionary" {
    pgmt-error.not-a-pgmt-group
    return
  }

  pgmt-page-setup(
    bg: bg,
    {
      set page(columns: 3)

      if scope != pigmentpedia {
        block(
          ..colorbox-block-properties,
          stack(
            rect(
              radius: 100%,
              width: 100%,
              stroke: 1pt + get-contrast-color(bg),
              pad(y: 8mm, align(center)[#get-pgmt-group-name(scope, bg: bg)]),
            ),
          ),
        )
      }

      display-pigments(scope, bg)
    },
  )
}

/// Create a palette.
///
/// - colors (color): Colors for the palette.
/// - size (int): Palette size.
/// - bg (color): Page background color.
/// - even (bool): Display colors side-by-side.
/// -> content
#let palette(colors, size: 0, bg: white, even: false) = {
  pgmt-page-setup(
    bg: bg,
    numbering: false,
    align(center + horizon)[
      #set box(width: 100%)
      #set grid(gutter: 0em)

      // handle single colors
      #if type(colors) == color {
        box(height: 80%, width: 80%, fill: colors)
        return
      }

      #if size == 0 {
        size = colors.len()
      }

      #if size > 12 { return }

      #if size == 1 {
        box(height: 80%, width: 80%, fill: colors.at(0))
      } else if size == 2 {
        box(height: 50%, fill: colors.at(0), width: 1fr)
        box(height: 50%, fill: colors.at(1), width: 1fr)
      } else if size == 3 {
        box(height: 50%, fill: colors.at(0), width: if even { 1fr } else { 6fr })
        box(height: 50%, fill: colors.at(1), width: if even { 1fr } else { 3fr })
        box(height: 50%, fill: colors.at(2), width: if even { 1fr } else { 1fr })
      } else if size == 4 {
        box(height: 50%, fill: colors.at(0), width: 1fr)
        box(height: 50%, fill: colors.at(1), width: 1fr)
        box(height: 50%, fill: colors.at(2), width: 1fr)
        box(height: 50%, fill: colors.at(3), width: 1fr)
      } else if size == 5 {
        if even {
          box(height: 50%, fill: colors.at(0), width: 1fr)
          box(height: 50%, fill: colors.at(1), width: 1fr)
          box(height: 50%, fill: colors.at(2), width: 1fr)
          box(height: 50%, fill: colors.at(3), width: 1fr)
          box(height: 50%, fill: colors.at(4), width: 1fr)
        } else {
          box(
            height: 90%,
            width: 80%,
            grid(
              box(height: 60%, fill: colors.at(0)),
              box(height: 30%, fill: colors.at(1)),
              box(height: 10%)[
                #grid(
                  columns: 3,
                  box(height: 100%, width: 1fr, fill: colors.at(2)),
                  box(height: 100%, width: 1fr, fill: colors.at(3)),
                  box(height: 100%, width: 1fr, fill: colors.at(4)),
                )
              ]
            ),
          )
        }
      } else if size == 6 {
        box(
          height: 90%,
          width: 80%,
          grid(
            box(height: 60%, fill: colors.at(0)),
            box(height: 30%, fill: colors.at(1)),
            box(height: 10%)[
              #grid(
                columns: 4,
                box(height: 100%, width: 1fr, fill: colors.at(2)),
                box(height: 100%, width: 1fr, fill: colors.at(3)),
                box(height: 100%, width: 1fr, fill: colors.at(4)),
                box(height: 100%, width: 1fr, fill: colors.at(5)),
              )
            ]
          ),
        )
      } else if size == 7 {
        box(
          height: 90%,
          width: 80%,
          grid(
            box(height: 60%, fill: colors.at(0)),
            box(height: 30%)[
              #grid(
                columns: 2,
                box(height: 100%, fill: colors.at(1)), box(height: 100%, fill: colors.at(2)),
              )
            ],
            box(height: 10%)[
              #grid(
                columns: 4,
                box(height: 100%, width: 1fr, fill: colors.at(3)),
                box(height: 100%, width: 1fr, fill: colors.at(4)),
                box(height: 100%, width: 1fr, fill: colors.at(5)),
                box(height: 100%, width: 1fr, fill: colors.at(6)),
              )
            ]
          ),
        )
      } else if size == 8 {
        box(
          height: 90%,
          width: 80%,
          grid(
            box(height: 60%, fill: colors.at(0)),
            box(height: 30%)[
              #grid(
                columns: 2,
                box(height: 100%, fill: colors.at(1)), box(height: 100%, fill: colors.at(2)),
              )
            ],
            box(height: 10%)[
              #grid(
                columns: 5,
                box(height: 100%, width: 1fr, fill: colors.at(3)),
                box(height: 100%, width: 1fr, fill: colors.at(4)),
                box(height: 100%, width: 1fr, fill: colors.at(5)),
                box(height: 100%, width: 1fr, fill: colors.at(6)),
                box(height: 100%, width: 1fr, fill: colors.at(7)),
              )
            ]
          ),
        )
      } else if size == 9 {
        box(
          height: 90%,
          width: 80%,
          grid(
            box(height: 50%, fill: colors.at(0)),
            box(height: 30%, fill: colors.at(1)),
            box(height: 10%)[
              #grid(
                columns: 3,
                box(height: 100%, fill: colors.at(2)),
                box(height: 100%, fill: colors.at(3)),
                box(height: 100%, fill: colors.at(4)),
              )
            ],
            box(height: 10%)[
              #grid(
                columns: 4,
                box(height: 100%, width: 1fr, fill: colors.at(5)),
                box(height: 100%, width: 1fr, fill: colors.at(6)),
                box(height: 100%, width: 1fr, fill: colors.at(7)),
                box(height: 100%, width: 1fr, fill: colors.at(8)),
              )
            ]
          ),
        )
      } else if size == 10 {
        box(
          height: 90%,
          width: 80%,
          grid(
            box(height: 50%, fill: colors.at(0)),
            box(height: 30%)[
              #grid(
                columns: 2,
                box(height: 100%, fill: colors.at(1)), box(height: 100%, fill: colors.at(2)),
              )
            ],
            box(height: 10%)[
              #grid(
                columns: 3,
                box(height: 100%, fill: colors.at(3)),
                box(height: 100%, fill: colors.at(4)),
                box(height: 100%, fill: colors.at(5)),
              )
            ],
            box(height: 10%)[
              #grid(
                columns: 4,
                box(height: 100%, width: 1fr, fill: colors.at(6)),
                box(height: 100%, width: 1fr, fill: colors.at(7)),
                box(height: 100%, width: 1fr, fill: colors.at(8)),
                box(height: 100%, width: 1fr, fill: colors.at(9)),
              )
            ]
          ),
        )
      } else if size == 11 {
        box(
          height: 90%,
          width: 80%,
          grid(
            box(height: 30%, fill: colors.at(0)),
            box(height: 30%, fill: colors.at(1)),
            box(height: 10%, fill: colors.at(2)),
            box(height: 10%, fill: colors.at(3)),
            box(height: 10%)[
              #grid(
                columns: 3,
                box(height: 100%, fill: colors.at(4)),
                box(height: 100%, fill: colors.at(5)),
                box(height: 100%, fill: colors.at(6)),
              )
            ],
            box(height: 10%)[
              #grid(
                columns: 4,
                box(height: 100%, width: 1fr, fill: colors.at(7)),
                box(height: 100%, width: 1fr, fill: colors.at(8)),
                box(height: 100%, width: 1fr, fill: colors.at(9)),
                box(height: 100%, width: 1fr, fill: colors.at(10)),
              )
            ]
          ),
        )
      } else if size == 12 {
        box(
          height: 90%,
          width: 80%,
          grid(
            box(height: 30%, fill: colors.at(0)),
            box(height: 30%, fill: colors.at(1)),
            box(height: 40%)[
              #grid(
                box(height: 20%, fill: colors.at(2)),
                box(height: 20%, fill: colors.at(3)),
                box(height: 20%, fill: colors.at(4)),
                box(height: 20%)[
                  #grid(
                    columns: 3,
                    box(height: 100%, width: 1fr, fill: colors.at(5)),
                    box(height: 100%, width: 1fr, fill: colors.at(6)),
                    box(height: 100%, width: 1fr, fill: colors.at(7)),
                  )
                ],
                box(height: 20%, width: 1fr)[
                  #grid(
                    columns: 4,
                    box(height: 100%, width: 1fr, fill: colors.at(8)),
                    box(height: 100%, width: 1fr, fill: colors.at(9)),
                    box(height: 100%, width: 1fr, fill: colors.at(10)),
                    box(height: 100%, width: 1fr, fill: colors.at(11)),
                  )
                ]
              )
            ]
          ),
        )
      }
      #v(3%) // correct center alignment.
    ],
  )
}


