// sample document to familiarize yourself with pigmentpedia

#import "@preview/pigmentpedia:0.2.0": *

#set page(background: rotate(-45deg, text(160pt, fill: Pantone.Gray.Cool-Gray-1)[SAMPLE]))
#show heading: it => [#v(5mm) #it #v(2mm)]
#set par(justify: true)

// uncomment to view Crayola colors
// #view-pigments(Crayola)

// uncomment to search for a specific color
// #find-pigment("gray")
// #find-pigment("orange", scope: Crayola) // search within scope

= #text(Crayola.Standard.Maximum-Red, 2em)[A Journey Through Hope]

== #pigment(Crayola.Standard.Burnt-Orange)[A Healthy Diet Starts With You]

#pigment(Crayola.Standard.Orange, lorem(80))

== #pigment(Crayola.Standard.Maximum-Blue)[Enough Sleep For A Lifetime]

#pigment(Crayola.Standard.Cerulean-Blue)[
  #lorem(100) \ \
  #lorem(100)
]

== #pigment(Crayola.Standard.Maximum-Green)[No Better Time Than The Present]

#pigment(Crayola.Standard.Asparagus, lorem(35))

#align(bottom)[
  #line(length: 100%, stroke: 0.2pt + grey)
  #emph(
    pigment(Pantone.Gray.Cool-Gray-11)[
      This is a sample document showcasing the use of pigmentpedia in text application. The pigments in pigmentpedia are not solely for text; they can be used anywhere you need a more diverse range of color in your documentation.

      Это образец документа, демонстрирующий использование pigmentpedia в текстовом приложении. Пигменты в pigmentpedia предназначены не только для текста; их можно использовать везде, где вам нужен более разнообразный диапазон цветов в вашей документации.

      这是一个示例文档，展示了在文本应用程序中使用pigmentpedia。pigmentpedia中的颜料不仅仅用于文本；它们可以用在文档中需要更多样化颜色的任何地方。
    ],
  )
]

// [SCROLL TO VIEW BELOW]
// find a nice green color
// #find-pigment("G20Y") // search with NCS partial color name
// uncomment to view a nice green color
// #view-pigment(NCS.S-1070-G20Y)
