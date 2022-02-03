 Vel←{ ⍝ ∨ with sort
     0::∆SIGNAL ⎕DMX
     2=⎕NC'⍺':⍺∨⍵
     ⍬≡⍴⍵:⍵
     (⊂⍒⍵)⌷⍵
 }
