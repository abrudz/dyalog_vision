 ∆NG←{ ⍝ ⎕NG Name Get
     0::∆SIGNAL ⎕DMX
     1≥|≡⍵:⍺⍎⍵
     ns←(⊃⎕RSI)⍎⍕⍺
     ns{0≠⍺.⎕NC⊃⊆⍵:⍺.⎕OR⊃⊆⍵ ⋄ 2=|≡⍵:⊃⌽⍵ ⋄ ⎕SIGNAL⊂('EN' 6)('Message'('Undefined name: ',⍵))}¨⍵
 }
