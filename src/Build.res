@module("marked")
external parse: string => string = "parse"

let breakFilename = (filename) => {
  let file = filename->String.split(".")
  let ext = file->Array.get(file->Array.length - 1)->Option.getOr("")
  let name = file->Array.slice(~start=0, ~end=file->Array.length - 1)->Array.join("")

  (name, ext)
}

let outputFiles =
  Fs.readdirSync("./output")
  ->Array.map(breakFilename)
  ->Array.filter(((_, ext)) => ext === "html")
  ->Array.map(((name, _)) => name)

let result =
  Fs.readdirSync("./blog")
  ->Array.map(breakFilename)
  ->Array.filter(((name, ext)) => (outputFiles->Array.includes(name) === false) && ext === "md")
  ->Array.map(((name, _)) => {
    (
      name,
      Fs.readFileSync(`./blog/${name}.md`)
      ->Buffer.toString
      ->parse
      ->Layout.make(~title=name)
    )
  })

result->Array.forEach(((name, content)) => {
  Fs.writeFileSync(`./output/${name}.html`, content->Buffer.fromString) 
})

Console.log(`Output files generated:\n ${result->Array.map(((name, _)) => `- ${name}`)->Array.join("\n")}`)
