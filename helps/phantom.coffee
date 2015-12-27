system  = require 'system'

argv    = require('minimist')(system.args)
page    = require('webpage').create()

# Params
filename    = argv['name']  ? "./example.png"
port        = argv['port']  ? 3700
w           = argv['w']     ? 320
h           = argv['h']     ? 240

page.clipRect = {
    top:        0
    left:       0
    width:      w
    height:     h
}

page.viewportSize = {
    width:      w
    height:     h
}

page.open "http://localhost:#{ port }", (status)->
    page.render(filename)
    phantom.exit()