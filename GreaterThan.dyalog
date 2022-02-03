 GreaterThan←{ ⍝ > monadic demote
     0::∆SIGNAL ⎕DMX
     0≠⎕NC'⍺':⍺>⍵
     ,[⍳2]⍵
 }
