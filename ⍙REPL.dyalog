 {ns}←⍙REPL target
 ;pos;shorten;caret;code;from;to;valid;names;glyphs;input;v;Err
 names←⎕NL-3 4
 Err←{⍞←⍵,⎕UCS 13}
 2022⌶⍣('W'=⊃⊃# ⎕WG'APLVersion')⊤⍨⍬
 :If ×≢target
     ns←⍎(⍕target)⎕NS ⍬
 :Else
     ns←⎕NS ⍬
 :EndIf

 ⍞←'Dyalog APL/',⊃⊃v←# ⎕WG'APLVersion'
 ⍞←(⊃v)∩'-',⎕D
 Err' Version ',¯2↓2⊃v

 Err'Serial No : 123456'
 Err'Vision Edition'
 Err⊃'Ddd Mmm _D hh:mm:ss YYYY'(1200⌶)1 ⎕DT'J'

 glyphs←⊃¨'⍝ (\W\S*)'⎕S'\1'¨⊃∘⎕NR¨names
 valid←×≢¨glyphs
 names⌿⍨←valid
 glyphs⌿⍨←valid
 from←'''[^'']*''' '⍝.*',' ?'∘,¨⎕THIS,⍥⍕¨'.',¨names,¨⊂' ?'
 to←'&&',glyphs

 :While '→'≢⊃⌽' '~⍨input←⍞⊣⍞←6⍴''
     :Trap 0
         :If ']'≡⊃input~' '
             ⎕←⎕SE.UCMD input
         :ElseIf ')vision'≡⎕C input~' '
             Err 1↓∊' ',¨glyphs
         :ElseIf ')'≡⊃input~' '
             ⎕←ns ⍙Execute'⎕'@(input⍳')')⊢input
         :Else
             ⎕←ns ⍙Execute input
         :EndIf
     :Else
         Err(⊢↓⍨'⍎'=⊃)⎕DMX.(OSError{⍵,2⌽(×≢⊃⍬⍴2⌽⍺,⊂'')/'") ("',⊃⍬⍴2⌽⊆⍺}Message{⍵,⍺,⍨': '/⍨×≢⍺}⊃⍬⍴DM,⊂'')
         pos←'^'⍳⍨caret←3⊃⎕DMX.DM
         shorten←11+(⊢-⍥≢from ⎕R to)pos↑code←2⊃⎕DMX.DM
         Err'     ',11↓from ⎕R to⊢code
         Err'     ',shorten↓caret
     :EndTrap
 :EndWhile
 ⍝ns.⎕EX ⎕NL-3 4
