 DownShoe←{ ⍝ ∪ for any rank
     0::∆SIGNAL ⎕DMX
     0=⎕NC'⍺':∪⍵ ⍝ monadic case
     ⍺⍪⍵⌿⍨(≢⍺)<⍺⍳⍵
 }
