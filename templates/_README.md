# Putty color schemes

<% _.forEach(schemes, function(scheme){ -%>
## <%= scheme.name %>
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