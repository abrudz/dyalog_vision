 LeftShoe←{ ⍝ ⊂ with partitioning along multiple leading axes
     0::∆SIGNAL ⎕DMX
     0=⎕NC'⍺':⊂⍵
     1≥|≡⍺:⍺⊂⍵
     rank←≢⍴⍵
     ⍬≡⍴⍺:(rank⍴⍺)∇ ⍵       ⍝ (⊂A1)⊂B
     pairs←⌽⍺,⍥⊂¨(≢⍺)↑⍳rank
     ⊃(↑{⍵⊂[⊃⌽⍺]⍨⊃⍺}¨)/⊂¨pairs,⊂⍵
 }
