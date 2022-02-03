 JotUnderbar←{ ⍝ ⍛ reverse composition/back-hook X f⍛g Y ←→ (f X) g Y ⋄ f⍛g Y ←→ (f Y) g Y, a.k.a. f⍨∘g⍨ and default arg
     0::∆SIGNAL ⎕DMX
     ⍺←⊢
     ncs←⎕NC↑'⍺' '⍺⍺' '⍵⍵'
     3∧.≤1↓ncs:⍺ ⍵⍵⍨∘⍺⍺⍨⍵
     2 2 3≡ncs:(⍺∘⍵⍵)⍵
     3 2 3≡ncs:(⍺⍺∘⍵⍵)⍵
     2 3 2≡ncs:(⍺⍺∘⍺)⍵
     3 3 2≡ncs:(⍺⍺∘⍵⍵)⍵
     ⎕SIGNAL⊂('EN' 2)('Message' 'At least one function operand required')
 }
