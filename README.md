# [Dyalog APL](https://www.dyalog.com/) Vision

This is [my](https://apl.wiki/Adám_Brudzewsky) vision for a realistic development of core Dyalog APL, including extending the domains of existing primitives/quad-names, and adding a few new ones. Requires Dyalog APL version 18.2 or higher.

### How to use

You can easily play with these almost like you use normal Dyalog APL in a session:

#### Initialisation

Install one or both of the [APL386 Unicode](https://abrudz.github.io/APL386/) or [SAX2](https://abrudz.github.io/SAX2/) fonts to display `⫽` and `⑊` correctly.

From within Dyalog APL 18.2 or higher:

* If using the Windows IDE, choose *APL385 Unicode* or *SAX2* as session font. 

* Enter `]get path/dyalog_vision`

#### Running code

You have three options:

1. Use the extensions directly with the glyph names, e.g. `4 1 dyalog_vision.RightShoeUnderbar ⎕A`.
2. Use `dyalog_vision.∆FIX` as a drop in for `⎕FIX`.
3. Use `dyalog_vision.⍙Repl #` to start a (limited) session where the glyphs work. Enter `→` to exit.

### Content

| Name                                          | Glyph  | Type* | Extension                                                                                                                                                                                                                             |
| --------------------------------------------- |:------:|:-----:| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [CircleDiaeresis](CircleDiaeresis.dyalog)     | `⍥`    | 🔵    | Depth when right operand is array                                                                                                                                                                                                     |
| [DelDiaeresis](DelDiaeresis.dyalog)           | `⍢`    | 🔺    | Under (a.k.a. Dual)                                                                                                                                                                                                                   |
| [DelTilde](DelTilde.dyalog)                   | `⍫`    | 🔺    | Obverse; `⍺⍺` but with inverse `⍵⍵`                                                                                                                                                                                                   |
| [DollarSign](DollarSign.dyalog)               | `$`    | 🔺    | string enhancement <code>${1}</code>:`1⊃⍺`, <code>${expr}</code>:`⍎expr`, `\n`:JSON                                                                                                                                                   |
| [DoubleBackslash](DoubleBackslash.dyalog)     | `⑊`    | 🔺    | Always-a-function`⍀` which allows short and/or multiple left args                                                                                                                                                                     |
| [DoubleSlash](DoubleSlash.dyalog)             | `⫽`    | 🔺    | Always-a-function `⌿`  which allows short and/or multiple left args                                                                                                                                                                   |
| [DownArrow](DownArrow.dyalog)                 | `↓`    | 🔵    | dyad allows long `⍺`                                                                                                                                                                                                                  |
| [DownShoe](DownShoe.dyalog)                   | `∪`    | 🔵    | dyad allows rank>1                                                                                                                                                                                                                    |
| [DownTack](DownTack.dyalog)                   | `⊤`    | ⚠     | `⊥⍣¯1` when left argument is scalar                                                                                                                                                                                                   |
| [EpsilonUnderbar](EpsilonUnderbar.dyalog)     | `⍷`    | 🔶    | monad: Type (like `∊` with `⎕ML←0`)                                                                                                                                                                                                   |
| [GreaterThan](GreaterThan.dyalog)             | `>`    | 🔶    | monad: demote (`,[⍳2]`)                                                                                                                                                                                                               |
| [JotUnderbar](JotUnderbar.dyalog)             | `⍛`    | 🔺    | reverse composition `X f⍛g Y` is `(f X) g Y` and default argument                                                                                                                                                                     |
| [LeftShoe](LeftShoe.dyalog)                   | `⊂`    | 🔵    | dyad allows partitioning along multiple leading axes                                                                                                                                                                                  |
| [LessThan](LessThan.dyalog)                   | `<`    | 🔶    | monad: promote (`⍵⍴⍨1,⍴⍵`)                                                                                                                                                                                                            |
| [QuadDiamond](QuadDiamond.dyalog)             | `⌺`    | 🔶    | auto-extended `⍵⍵`, allows small `⍵`, optional edge spec(s) ([0:Zero; 1:Repl; 2:Rev; 3:Mirror; 4:Wrap](http://web.science.mq.edu.au/~len/preprint/hamey-dicta2015-functional-border.pdf#page=3); -:Twist) with masks as operand's `⍺` |
| [Rho](Rho.dyalog)                             | `⍴`    | 🔵    | dyad: negatives reverse axis, `0.5` auto-size rounding down, `1.5` auto-size rounding up                                                                                                                                              |
| [RightShoeUnderbar](RightShoeUnderbar.dyalog) | `⊇`    | 🔺    | monad: last (`⊃⌽,⍵`)<br/>dyad: select (`⌷⍨∘⊃⍨⍤0 99`)                                                                                                                                                                                  |
| [Root](Root.dyalog)                           | `√`    | 🔺    | (Square) Root                                                                                                                                                                                                                         |
| [Tilde](Tilde.dyalog)                         | `~`    | 🔵    | dyad allows rank>1                                                                                                                                                                                                                    |
| [UpArrow](UpArrow.dyalog)                     | `↑`    | 🔵    | allows long `⍺`                                                                                                                                                                                                                       |
| [UpShoe](UpShoe.dyalog)                       | `∩`    | 🔵    | dyadic allows rank>1                                                                                                                                                                                                                  |
| [Vel](Vel.dyalog)                             | `∨`    | 🔶    | monadic is Descending Sort                                                                                                                                                                                                            |
| [Wedge](Wedge.dyalog)                         | `∧`    | 🔶    | monadic is Ascending Sort                                                                                                                                                                                                             |
| [∆C](∆C.dyalog)                               | `⎕C`   | 🔵    | scalar                                                                                                                                                                                                                                |
| [∆EM](∆EM.dyalog)                             | `⎕EM`  | 🔵    | Self-inverse `⎕EM`                                                                                                                                                                                                                    |
| [∆NS](∆NS.dyalog)                             | `⎕NS`  | 🔵    | Name Set                                                                                                                                                                                                                              |
| [∆NG](∆NG.dyalog)                             | `⎕NG`  | 🔺    | Name Get                                                                                                                                                                                                                              |
| [∆UCS](∆UCS.dyalog)                           | `⎕UCS` | 🔵    | scalar when monadic                                                                                                                                                                                                                   |

\* 🔺 new feature 🔶 added valence 🔵 expanded domain ⚠ breaking change
