 ∆NS←{ ⍝ ⎕NS which allows name-value pairs
     0::∆SIGNAL ⎕DMX
     levels←+/∧\⎕RSI=⎕THIS
     caller←⊃levels↓⎕RSI
     ⍺←⊢
     a←⍺
     nc←⎕NC'⍺'
     ref←{
         2=⍵:caller⍎a caller.⎕NS ⍬
         3=⍵:caller.⎕NS ⍬
         9=⍵:caller⍎'a'caller.⎕NS ⍬
     }nc
     _←ref{ ⍝ new behaviour
         (,1)≢(⍴,≡)⍵:⍺⍺ caller.⍎⍺,'←⍵ ⋄ ⍺⍺' ⍝ non-⎕OR: use value
         4 11::⍺⍺ caller.⍎⍺,'←⎕NS ⍵ ⋄ ⍺⍺' ⍝ object?
         ⍺⍺ caller.⍎⍺,'←⍎⎕FX ⍵ ⋄ ⍺⍺⊣⍺{⍺≡⍵:⍬ ⋄ ⎕EX ⍵}⎕FX ⍵' ⍝ function?
     }/¨⍵
     2=nc:_←⍕ref
     ref
 }
