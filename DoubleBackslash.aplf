 DoubleBackslash←{ ⍝ ⑊ always-function ⍀ and allows expansion along multiple leading axes with short ⍺s
     0::∆SIGNAL ⎕DMX
     1≥≡⍺:⍺⍀⍵ ⍝ A⍀B
     w←1⌿⍵
     rank←≢⍴w
     ⍬≡⍴⍺:w ∇⍨rank⍴⍺      ⍝ (⊂,A1)⍀B
     pairs←⍺,⍥⊂¨(≢⍺)↑⍳rank
     ⊃{⍵⍀[⊃⌽⍺]⍨⊃⍺}⌿pairs,⊂w
 }
