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
<% _.forEach(schemes, function(scheme){ -%>
### <%= scheme.name %>
#### Terminale
![screenshot](/examples/terminale-<%= _.kebabCase(scheme.name) %>.png)

#### Vim
![screenshot](/examples/vim-<%= _.kebabCase(scheme.name) %>.png)

<% }) -%>
<%
// ## Default
// * **Default Foreground**        [*Colour0*]   - `187, 187, 187`
// * **Default Bold Foreground**   [*Colour1*]   - `255, 255, 255`
// * **Default Background**        [*Colour2*]   - `0, 0, 0`
// * **Default Bold Background**   [*Colour3*]   - `85, 85, 85`
// * **Cursor Text**               [*Colour4*]   - `0, 0, 0`
// * **Cursor Colour**             [*Colour5*]   - `0, 255, 0`
// 
// * **ANSI Black**                [*Colour6*]   - `0, 0, 0`
// * **ANSI Black Bold**           [*Colour7*]   - `85, 85, 85`
// * **ANSI Red**                  [*Colour8*]   - `187, 0, 0`
// * **ANSI Red Bold**             [*Colour9*]   - `255, 85, 85`
// * **ANSI Green**                [*Colour10*]  - `0, 187, 0`
// * **ANSI Green Bold**           [*Colour11*]  - `85, 255, 85`
// * **ANSI Yellow**               [*Colour12*]  - `187, 187, 0`
// * **ANSI Yellow Bold**          [*Colour13*]  - `255, 255, 0`
// * **ANSI Blue**                 [*Colour14*]  - `0, 0, 187`
// * **ANSI Blue Bold**            [*Colour15*]  - `85, 85, 255`
// * **ANSI Magenta**              [*Colour16*]  - `187, 0, 187`
// * **ANSI Magenta Bold**         [*Colour17*]  - `255, 85, 255`
// * **ANSI Cyan**                 [*Colour18*]  - `0, 187, 187`
// * **ANSI Cyan Bold**            [*Colour19*]  - `85, 255, 255`
// * **ANSI White**                [*Colour20*]  - `187, 187, 187`
// * **ANSI White Bold**           [*Colour21*]  - `255, 255, 255`
-%>