 ∆EM←{ ⍝ ⎕EM self-inverse
     ⎕IO←0
     ⍺←⎕EM⍳32768
     dr←⎕DR ⍵
     dr=326:⍺∘∇¨⍵
     11::⎕SIGNAL⊂('EN' 11)('Message' 'Error number must be integer')
     2|dr:⎕EM ⍵
     ⍺∊⍨⊂⍵:⍺⍳⊂⍵
     ⎕SIGNAL⊂('EN' 11)('Message' 'Invalid error message')
 }
