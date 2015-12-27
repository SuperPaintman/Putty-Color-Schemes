# Putty color schemes
Color schemes for windows SSH terminal [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html). 

Themes copied from:
* [http://putty.org.ru/](http://putty.org.ru/)

## Installation
Merge theme `.reg` file from `schemesReg`.

## Create theme
### 1. Create .puttyScheme
Create `.puttyScheme` file file in `schemes`. This is a common JSON file.

```json
{
    "name": "Name Of Theme",
    "colors": {
        "Default Foreground": "#d9e6f2",
        "Default Bold Foreground": "#d9e6f2",
        "Default Background": "#0d1926",
        "Default Bold Background": "#0d1926",
        "Cursor Text": "#d9e6f2",
        "Cursor Colour": "#d9e6f2",
        "ANSI Black": "#000000",
        "ANSI Black Bold": "#262626",
        "ANSI Red": "#b87a7a",
        "ANSI Red Bold": "#dbbdbd",
        "ANSI Green": "#7ab87a",
        "ANSI Green Bold": "#bddbbd",
        "ANSI Yellow": "#b8b87a",
        "ANSI Yellow Bold": "#dbdbbd",
        "ANSI Blue": "#7a7ab8",
        "ANSI Blue Bold": "#bdbddb",
        "ANSI Magenta": "#b87ab8",
        "ANSI Magenta Bold": "#dbbddb",
        "ANSI Cyan": "#7ab8b8",
        "ANSI Cyan Bold": "#bddbdb",
        "ANSI White": "#d9d9d9",
        "ANSI White Bold": "#ffffff"
    }
}
```

### 2. Install NPM dependence
```sh
npm install
```

### 3. Run builder
```sh
coffee ./helps/builder.coffee
```

### 4. Done
Finished theme added to the folder `schemesReg` with name in **kebab-case**.

## Themes
### Apple Terminal
#### Screenshot
![screenshot](/examples/example-apple-terminal.png)
### Argonaut
#### Screenshot
![screenshot](/examples/example-argonaut.png)
### Birds Of Paradise
#### Screenshot
![screenshot](/examples/example-birds-of-paradise.png)
### Blazer
#### Screenshot
![screenshot](/examples/example-blazer.png)
### Chalkboard
#### Screenshot
![screenshot](/examples/example-chalkboard.png)
### Ciapre
#### Screenshot
![screenshot](/examples/example-ciapre.png)
### Dark Pastel
#### Screenshot
![screenshot](/examples/example-dark-pastel.png)
### Desert
#### Screenshot
![screenshot](/examples/example-desert.png)
### Espresso
#### Screenshot
![screenshot](/examples/example-espresso.png)
### Fish Of Paradise
#### Screenshot
![screenshot](/examples/example-fish-of-paradise.png)
### Fish Tank
#### Screenshot
![screenshot](/examples/example-fish-tank.png)
### Github
#### Screenshot
![screenshot](/examples/example-github.png)
### Grass
#### Screenshot
![screenshot](/examples/example-grass.png)
### Highway
#### Screenshot
![screenshot](/examples/example-highway.png)
### Homebrew
#### Screenshot
![screenshot](/examples/example-homebrew.png)
### Hurtado
#### Screenshot
![screenshot](/examples/example-hurtado.png)
### Ic Green Ppl
#### Screenshot
![screenshot](/examples/example-ic-green-ppl.png)
### Idletoes
#### Screenshot
![screenshot](/examples/example-idletoes.png)
### Igvita Desert
#### Screenshot
![screenshot](/examples/example-igvita-desert.png)
### Igvita Light
#### Screenshot
![screenshot](/examples/example-igvita-light.png)
### Invisibone
#### Screenshot
![screenshot](/examples/example-invisibone.png)
### Kibble
#### Screenshot
![screenshot](/examples/example-kibble.png)
### Liquid Carbon Transparent Inverse
#### Screenshot
![screenshot](/examples/example-liquid-carbon-transparent-inverse.png)
### Liquid Carbon Transparent
#### Screenshot
![screenshot](/examples/example-liquid-carbon-transparent.png)
### Liquid Carbon
#### Screenshot
![screenshot](/examples/example-liquid-carbon.png)
### Man Page
#### Screenshot
![screenshot](/examples/example-man-page.png)
### Monokai Dimmed
#### Screenshot
![screenshot](/examples/example-monokai-dimmed.png)
### Monokai Soda
#### Screenshot
![screenshot](/examples/example-monokai-soda.png)
### Monokai Stevelosh
#### Screenshot
![screenshot](/examples/example-monokai-stevelosh.png)
### Monokai
#### Screenshot
![screenshot](/examples/example-monokai.png)
### Neopolitan
#### Screenshot
![screenshot](/examples/example-neopolitan.png)
### Novel
#### Screenshot
![screenshot](/examples/example-novel.png)
### Ocean
#### Screenshot
![screenshot](/examples/example-ocean.png)
### Papirus Dark
#### Screenshot
![screenshot](/examples/example-papirus-dark.png)
### Pro
#### Screenshot
![screenshot](/examples/example-pro.png)
### Red Sands
#### Screenshot
![screenshot](/examples/example-red-sands.png)
### Seafoam Pastel
#### Screenshot
![screenshot](/examples/example-seafoam-pastel.png)
### Solarized Darcula
#### Screenshot
![screenshot](/examples/example-solarized-darcula.png)
### Solarized Dark
#### Screenshot
![screenshot](/examples/example-solarized-dark.png)
### Solarized Light
#### Screenshot
![screenshot](/examples/example-solarized-light.png)
### Sundried
#### Screenshot
![screenshot](/examples/example-sundried.png)
### Symfonic
#### Screenshot
![screenshot](/examples/example-symfonic.png)
### Teerb
#### Screenshot
![screenshot](/examples/example-teerb.png)
### Terminal Basic
#### Screenshot
![screenshot](/examples/example-terminal-basic.png)
### Thayer
#### Screenshot
![screenshot](/examples/example-thayer.png)
### Tomorrow Night
#### Screenshot
![screenshot](/examples/example-tomorrow-night.png)
### Tomorrow
#### Screenshot
![screenshot](/examples/example-tomorrow.png)
### Twilight
#### Screenshot
![screenshot](/examples/example-twilight.png)
### Vaughn
#### Screenshot
![screenshot](/examples/example-vaughn.png)
### X Dotshare
#### Screenshot
![screenshot](/examples/example-x-dotshare.png)
### Zenburn
#### Screenshot
![screenshot](/examples/example-zenburn.png)
