let dictToProperties = (dictionary: dict<string>) => {
  dictionary->Dict.toArray->Array.map(((key, value)) => `${key}="${value}"`)->Array.join(" ")
}

let element = (tag: string) => (children: array<string>, ~options: option<dict<string>>=?) => {
  let properties = options->Option.mapOr("", dictToProperties)
  `<${tag} ${properties}>${children->Array.join("")}</${tag}>`
}

let elementSelfClosing = (tag: string) => (~options: option<dict<string>>=?) => {
  let properties = options->Option.mapOr("", dictToProperties)
  `<${tag} ${properties}/>`
}

let doctype = "<!DOCTYPE html>"

// Document structure
let html = element("html")
let head = element("head")
let body = element("body")
let title = element("title")
let meta = elementSelfClosing("meta")
let link = elementSelfClosing("link")
let style = element("style")
let script = element("script")

// Content sectioning
let main = element("main")
let header = element("header")
let footer = element("footer")
let nav = element("nav")
let section = element("section")
let article = element("article")
let aside = element("aside")
let h1 = element("h1")
let h2 = element("h2")
let h3 = element("h3")
let h4 = element("h4")
let h5 = element("h5")
let h6 = element("h6")

// Text content
let div = element("div")
let p = element("p")
let span = element("span")
let pre = element("pre")
let code = element("code")
let kbd = element("kbd")
let samp = element("samp")
let var = element("var")
let blockquote = element("blockquote")
let cite = element("cite")
let q = element("q")
let abbr = element("abbr")
let dfn = element("dfn")
let time = element("time")
let mark = element("mark")
let small = element("small")
let del = element("del")
let ins = element("ins")
let sub = element("sub")
let sup = element("sup")

// Lists
let ul = element("ul")
let ol = element("ol")
let li = element("li")
let dl = element("dl")
let dt = element("dt")
let dd = element("dd")

// Links and media
let a = element("a")
let img = elementSelfClosing("img")
let figure = element("figure")
let figcaption = element("figcaption")
let picture = element("picture")
let source = elementSelfClosing("source")
let video = element("video")
let audio = element("audio")
let track = elementSelfClosing("track")

// Forms
let form = element("form")
let fieldset = element("fieldset")
let legend = element("legend")
let label = element("label")
let input = elementSelfClosing("input")
let button = element("button")
let select = element("select")
let option = element("option")
let optgroup = element("optgroup")
let textarea = element("textarea")
let output = element("output")
let progress = element("progress")
let meter = element("meter")

// Tables
let table = element("table")
let caption = element("caption")
let thead = element("thead")
let tbody = element("tbody")
let tfoot = element("tfoot")
let tr = element("tr")
let th = element("th")
let td = element("td")
let col = elementSelfClosing("col")
let colgroup = element("colgroup")

// Interactive elements
let details = element("details")
let summary = element("summary")
let dialog = element("dialog")

// Embedded content
let iframe = element("iframe")
let embed = elementSelfClosing("embed")
let object = element("object")
let param = elementSelfClosing("param")
let canvas = element("canvas")
let svg = element("svg")

// Text formatting
let b = element("b")
let strong = element("strong")
let i = element("i")
let em = element("em")
let u = element("u")
let s = element("s")
let bdi = element("bdi")
let bdo = element("bdo")
let ruby = element("ruby")
let rt = element("rt")
let rp = element("rp")

// Self-closing elements
let area = elementSelfClosing("area")
let base = elementSelfClosing("base")
let br = elementSelfClosing("br")
let hr = elementSelfClosing("hr")
let wbr = elementSelfClosing("wbr")

// Web components
let template = element("template")
let slot = element("slot")
