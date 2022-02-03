 CircleDiaeresis←{ ⍝ ⍥ also depth
     0::∆SIGNAL ⎕DMX
     ⍺←{⍵ ⋄ ⍺⍺}            ⍝ monadic: pass-thorugh
     a←⍺                   ⍝ [17941]
     3=⎕NC'⍵⍵':⊢⍺ ⍺⍺⍥⍵⍵ ⍵  ⍝ f⍥g
     k←⌽3⍴⌽⍵⍵              ⍝ r → r r r    q r → r q r    p q r → p q r
     n←k<0
     d←|≡¨3⍴⍵ ⍺ ⍵ ⍵
     (n/k)+←n/d
     3 4∊⍨⎕NC'a':⍺⍺{⍵⍵<|≡⍵:∇¨⍵ ⋄ ⍺⍺ ⍵}(⊃k)⊢⍵ ⍝ called monadically
     b←1↓k<d
     ⍱/b:⍺ ⍺⍺ ⍵
     </b:⍺∘∇¨⍵
     >/b:∇∘⍵¨⍺
     ∧/b:⍺ ∇¨⍵
 }
