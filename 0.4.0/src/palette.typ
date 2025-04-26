/*
#let palette(colors, bg: white, even: false) = {
  if type(colors) != array {
    view-pigments(colors)
    return
  }

  pgmt-page-setup(
    bg: bg,
    numbering: false,
    align(center + horizon)[
      #let palette-size = colors.len()
      #if palette-size > 12 { return }
      #let palette-horizontal-height = 50%

      #set grid(gutter: 0pt)

      #if palette-size == 1 {
        box(height: palette-horizontal-height, fill: colors.at(0), width: 1fr)
      } else if palette-size == 2 {
        box(height: palette-horizontal-height, fill: colors.at(0), width: 6fr)
        box(height: palette-horizontal-height, fill: colors.at(1), width: 6fr)
      } else if palette-size == 3 {
        box(height: palette-horizontal-height, fill: colors.at(0), width: if even { 1fr } else { 6fr })
        box(height: palette-horizontal-height, fill: colors.at(1), width: if even { 1fr } else { 3fr })
        box(height: palette-horizontal-height, fill: colors.at(2), width: if even { 1fr } else { 1fr })
      } else if not even and palette-size > 3 and palette-size < 6 {
        box(
          height: 90%,
          width: 80%,
          grid(
            box(height: 60%, fill: colors.at(0), width: 6fr),
            box(height: 30%, fill: colors.at(1), width: 3fr),
            box(height: 10%, width: 1fr)[
              #grid(
                gutter: 0pt,
                box(height: 100% / 3, width: 100%, fill: colors.at(2)),
                box(height: 100% / 3, width: 100%, fill: colors.at(3)),
                box(height: 100% / 3, width: 100%, fill: colors.at(4)),
              )
            ]
          ),
        )
      } else if palette-size > 3 and palette-size < 6 and even {
        for color in colors {
          box(height: palette-horizontal-height, fill: color, width: 1fr)
        }
      } else if not even and palette-size == 6 {
        box(height: palette-horizontal-height, fill: colors.at(0), width: 6fr)
        box(height: palette-horizontal-height, width: 3fr)[
          #grid(
            box(height: 100% / 2, width: 100%, fill: colors.at(1)),
            box(height: 100% / 2, width: 100%, fill: colors.at(2)),
          )
        ]
        box(height: palette-horizontal-height, width: 1fr)[
          #grid(
            rows: 3,
            box(height: 100% / 3, width: 100%, fill: colors.at(3)),
            box(height: 100% / 3, width: 100%, fill: colors.at(4)),
            box(height: 100% / 3, width: 100%, fill: colors.at(5)),
          )
        ]
      } else if not even and palette-size == 12 {
        set box(width: 100%)
        box(
          height: 90%,
          width: 80%,
          grid(
            box(height: 30%, fill: colors.at(0)),
            box(height: 30%, fill: colors.at(1)),
            box(height: 40%)[
              #grid(
                box(height: 100% / 5, fill: colors.at(2)),
                box(height: 100% / 5, fill: colors.at(3)),
                box(height: 100% / 5, fill: colors.at(4)),
                box(height: 100% / 5)[
                  #grid(
                    columns: 3,
                    box(height: 100%, width: 1fr, fill: colors.at(5)),
                    box(height: 100%, width: 1fr, fill: colors.at(6)),
                    box(height: 100%, width: 1fr, fill: colors.at(7)),
                  )
                ],
                box(height: 100% / 5, width: 1fr)[
                  #grid(
                    columns: 4,
                    box(height: 100%, width: 1fr, fill: colors.at(8)),
                    box(height: 100%, width: 1fr, fill: colors.at(9)),
                    box(height: 100%, width: 1fr, fill: colors.at(10)),
                    box(height: 100%, width: 1fr, fill: colors.at(11)),
                  )
                ]
              ),
            ],
          ),
        )
      }
    ],
  )
}
*/






/*
#let palette(colors, bg: white, even: false) = {
  if type(colors) != array {
    view-pigments(colors)
    return
  }

  pgmt-page-setup(
    bg: bg,
    numbering: false,
    align(center + horizon)[
      #let palette-size = colors.len()
      #let palette-horizontal-height = 50%

      #if palette-size == 1 {
        box(height: palette-horizontal-height, fill: colors.at(0), width: 1fr)
      } else if palette-size == 2 {
        box(height: palette-horizontal-height, fill: colors.at(0), width: 6fr)
        box(height: palette-horizontal-height, fill: colors.at(1), width: 6fr)
      } else if palette-size == 3 {
        box(height: palette-horizontal-height, fill: colors.at(0), width: if even { 1fr } else { 6fr })
        box(height: palette-horizontal-height, fill: colors.at(1), width: if even { 1fr } else { 3fr })
        box(height: palette-horizontal-height, fill: colors.at(2), width: if even { 1fr } else { 1fr })
      } else if not even and palette-size > 3 and palette-size < 6 {
        box(height: palette-horizontal-height, fill: colors.at(0), width: 6fr)
        box(height: palette-horizontal-height, fill: colors.at(1), width: 3fr)
        box(height: palette-horizontal-height, width: 1fr)[
          #grid(
            gutter: 0pt,
            box(height: 100% / 3, width: 100%, fill: colors.at(2)),
            box(height: 100% / 3, width: 100%, fill: colors.at(3)),
            box(height: 100% / 3, width: 100%, fill: colors.at(4)),
          )
        ]
      } else if palette-size > 3 and palette-size < 6 and even {
        for color in colors {
          box(height: palette-horizontal-height, fill: color, width: 1fr)
        }
      } else if not even and palette-size == 6 {
        box(height: palette-horizontal-height, fill: colors.at(0), width: 6fr)
        box(height: palette-horizontal-height, width: 3fr)[
          #grid(
            gutter: 0pt,
            box(height: 100% / 2, width: 100%, fill: colors.at(1)),
            box(height: 100% / 2, width: 100%, fill: colors.at(2)),
          )
        ]
        box(height: palette-horizontal-height, width: 1fr)[
          #grid(
            rows: 3,
            gutter: 0pt,
            box(height: 100% / 3, width: 100%, fill: colors.at(3)),
            box(height: 100% / 3, width: 100%, fill: colors.at(4)),
            box(height: 100% / 3, width: 100%, fill: colors.at(5)),
          )
        ]
      }
    ],
  )
}
*/




