fs          = require 'fs'

Promise     = require 'bluebird'
ejs         = require 'ejs'
stylus      = require 'stylus'
_           = require 'lodash'

colorNameToID = (name)->
    switch name
        when "Default Foreground"         then "Colour0"
        when "Default Bold Foreground"    then "Colour1"
        when "Default Background"         then "Colour2"
        when "Default Bold Background"    then "Colour3"
        when "Cursor Text"                then "Colour4"
        when "Cursor Colour"              then "Colour5"
        when "ANSI Black"                 then "Colour6"
        when "ANSI Black Bold"            then "Colour7"
        when "ANSI Red"                   then "Colour8"
        when "ANSI Red Bold"              then "Colour9"
        when "ANSI Green"                 then "Colour10"
        when "ANSI Green Bold"            then "Colour11"
        when "ANSI Yellow"                then "Colour12"
        when "ANSI Yellow Bold"           then "Colour13"
        when "ANSI Blue"                  then "Colour14"
        when "ANSI Blue Bold"             then "Colour15"
        when "ANSI Magenta"               then "Colour16"
        when "ANSI Magenta Bold"          then "Colour17"
        when "ANSI Cyan"                  then "Colour18"
        when "ANSI Cyan Bold"             then "Colour19"
        when "ANSI White"                 then "Colour20"
        when "ANSI White Bold"            then "Colour21"
        else                                   name

hexToRGB = (hex)->
    hex = hex.replace(/^\#/, "")

    colors = hex.match(/(.{2})(.{2})(.{2})/)

    [r, g, b] = colors[1..3]

    r = parseInt(r, 16)
    g = parseInt(g, 16)
    b = parseInt(b, 16)

    return {
        r
        g
        b
    }

loadAllSchemes = ->
    files = fs.readdirSync("../schemes")

    files = _.filter files, (filename)-> /\.puttyScheme$/i.test(filename)

loadScheme = (name)->
    new Promise (resolve, reject)->
        fs.readFile "../schemes/#{ name }", (err, data)->
            if err then reject(err)
            else resolve(data)
    .then (data)->
        JSON.parse(data)

convertAllSchemes = ->
    Promise.map loadAllSchemes(), (name)->
        loadScheme(name)
    .then (schemes)->
        template = fs.readFileSync("../templates/_sheme.reg").toString()

        Promise.map schemes, (scheme)->
            colors = scheme.colors

            colors = _.mapKeys colors, (val, key)->
                colorNameToID(key)

            colors = _.mapValues colors, (color)->
                rgb = hexToRGB(color)

                spaces = "                                "
                regColor = "\"#{rgb.r},#{rgb.g},#{rgb.b}\""
                len = regColor.length

                ("#{regColor}#{spaces}")[0...32]

            result = ejs.render template, {
                name: encodeURIComponent scheme.name.toLowerCase()
                colors: colors
            }

            filename = _.kebabCase(scheme.name)
            new Promise (resolve, reject)->
                fs.writeFile "../schemesReg/putty-#{ filename }.reg"
                    , result
                    , 'utf8'
                    , (err)->
                        if err then reject(err)
                        else resolve()

convertReadme = ->
    Promise.map loadAllSchemes(), (name)->
        loadScheme(name)
    .then (schemes)->
        template = fs.readFileSync("../templates/_README.md").toString()

        result = ejs.render template, {
            schemes
            _
        }

        new Promise (resolve, reject)->
            fs.writeFile "../README.md"
                , result
                , 'utf8'
                , (err)->
                    if err then reject(err)
                    else resolve()

convertTerminal = ->
    Promise.map loadAllSchemes(), (name)->
        loadScheme(name)
    .then (schemes)->
        template = fs.readFileSync("../templates/terminale.styl").toString()

        Promise.map schemes, (scheme)->
            scheme.colors = _.mapKeys scheme.colors, (val, key)->
                _.kebabCase(key)

            new Promise (resolve, reject)->
                stylus(template)
                .define "colors", scheme.colors, true
                .render (err, css)->
                    if err then reject(err)
                    else resolve(css)
            .then (css)->
                console.log css

# convertTerminal()


Promise.all [
    convertAllSchemes()
    convertReadme()
]
.then ->
    console.log "Done"