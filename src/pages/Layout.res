open Html
let links = [
  ("Blog", "./index.html"),
  ("About me", "./me.html"),
]

let header =
  header(
    ~options={dict{"style": "display: flex, flex-direction: row"}},
    [
        h1(~options={dict{"style": "font-family: monospace;"}}, ["Thoughts of machines"]),
        ul(
          ~options={dict{"class": "navbar"}},
          links->Array.map(((caption, url)) => li([a(~options={dict{"href": url}}, [caption])]))
        )
    ]
  )

let make = (content: string, ~title: string = "") => {
  doctype +
  html([
    head([
      Html.title([`Thoughts of machines - ${title}`]),
      link(~options={dict{"rel": "stylesheet", "href": "./static/style.css"}}),
      meta(~options={dict{"name": "viewport", "content": "width=device-width, initial-scale=1.0"}}),
      `<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">`
    ]),
    body([
      header,
      br(),
      `
      <svg width="100%" height="20" viewBox="0 0 100 20" preserveAspectRatio="none">
        <path d="M0 10 Q 2.5 7, 5 10 T 10 10 T 15 10 T 20 10 T 25 10 T 30 10 T 35 10 T 40 10 T 45 10 T 50 10 T 55 10 T 60 10 T 65 10 T 70 10 T 75 10 T 80 10 T 85 10 T 90 10 T 95 10 T 100 10" stroke="#EFEFEF" fill="none" stroke-width="2"/>
      </svg> 
      `,
      content
    ])
  ])
}
